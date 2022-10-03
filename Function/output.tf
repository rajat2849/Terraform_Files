output "join" {
    value = "${join(",",var.users)}"
}

output "uppercase" {
    value = "${upper(var.users[2])}"
}

output "lowercase" {
    value = "${lower(var.users[1])}"
}