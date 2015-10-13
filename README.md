# ndsbase-puppet
Puppet scripts to set up nds base environment in a red hat linux machine

Sets up nds_blin_env in the machine.

nds_blin_env has many dependent nds specific rpms. Place the following inside the rpms directory.

1. compat-libstdc++-33-3.2.3-69.el6.i686.rpm
2. jdk-1.7.0_05-1_fcs.i586.rpm
3. nds_blin_env-5.1.2-el5.i386.rpm
4. pam_ccreds-3-5.x86_64.rpm
5. pam_smb-1.1.7-7.2.1.i386.rpm

# Running the puppet script

Importing this module into a puppet manifest file will setup the nds_blin_env.

# Tutorials

Puppet usually has the following directory structure in linux.

    /etc/puppet/
  
      ---manifests/
  
      ---modules/

Put this module 'ndsbase' under the modules folder. Place the rpms mentioned above in the 'rpms' directory

Create a .pp file with a name of ur choice anywhere in the machine and use,

    import ndsbase

You can run the .pp file you created using the command, 

    puppet apply <filename>.pp
