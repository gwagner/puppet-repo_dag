class repo_dag::config
{
    host {
        'repo_dag':
            ip => '193.1.193.67',
            host_aliases => ['apt.sw.be'],
            ensure => present,
            target => '/etc/hosts';
    }
}