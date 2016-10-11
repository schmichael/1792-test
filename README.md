You'll need *8* terminals for this! Sorry for the hassle.


```sh
# First get the configs and cd to the directory:
curl -L https://github.com/schmichael/1792-test/archive/2016.10.10.tar.gz | tar xz
cd 1792-test-2016.10.10

# Terminal 1:
consul agent -config-file consul.json

# Terminal 2:
consul agent -config-file consul1json

# Terminal 3:
consul agent -config-file consul2json

# Terminal 4:
consul agent -config-file consul3json

# Terminal 5:
consul join 127.0.{0,1}.{1,2,3}

# Terminal 6:
nomad agent -config 1792-server1.hcl

# Terminal 7:
nomad agent -config 1792-server2.hcl

# Terminal 8:
nomad agent -config 1792-server3.hcl
```

Use Terminal 5 to run `nomad server-members` to ensure they bootstrapped
properly.
