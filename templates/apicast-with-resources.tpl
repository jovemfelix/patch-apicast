NAME   MEMORY_LIMIT   MEMORY_REQUEST   CPU_LIMIT   CPU_REQUEST
{range .items[*]}
{.metadata.name}{'\t'}{.spec.resources.limits.memory}{'\t'}{.spec.resources.requests.memory}{'\t'}{.spec.resources.limits.cpu}{'\t'}{.spec.resources.requests.cpu}
{end}
