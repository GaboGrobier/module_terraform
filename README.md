# Práctica de Terraform - Infraestructura en AWS

Este repositorio contiene un conjunto de módulos de Terraform utilizados para construir una infraestructura básica en Amazon Web Services (AWS). El objetivo de este proyecto es practicar y automatizar el despliegue de una infraestructura utilizando Terraform.

## Estructura del Proyecto

El proyecto está organizado en varios módulos, cada uno encargado de crear un componente específico de la infraestructura. Los módulos se encuentran dentro del directorio `./modules`, y son referenciados desde el archivo principal de Terraform.

### Módulos utilizados:

1. **Proveedor AWS**
   - Define el proveedor de AWS con la región `us-east-1` y el perfil `default` para las credenciales.

2. **Módulo EC2**
   - Despliega instancias EC2. Este módulo depende de otros módulos como `subnet` y `sg` para obtener los IDs de la subred y el grupo de seguridad.

3. **Módulo VPC**
   - Crea una Virtual Private Cloud (VPC) en AWS, que servirá como la red privada para los recursos.

4. **Módulo Subnet**
   - Crea una subred dentro de la VPC. Depende del módulo `vpc` para obtener el ID de la VPC.

5. **Módulo Tabla de Enrutamiento**
   - Crea una tabla de enrutamiento en la subred especificada, facilitando la conexión entre los recursos en la VPC. Depende de los módulos `subnet`, `vpc` y `gw`.

6. **Módulo Security Group (SG)**
   - Crea un grupo de seguridad (Security Group) para controlar el acceso a los recursos de la infraestructura, como las instancias EC2.

7. **Módulo Gateway (GW)**
   - Crea un gateway (puerta de enlace) para la VPC, utilizado para enrutar el tráfico de la red privada a la red pública o hacia internet.

8. **Módulo S3**
   - Crea un bucket S3 en AWS, utilizado para almacenar datos o archivos.

## Cómo usar este proyecto

1. **Clonar el repositorio:**
    Para comenzar, clona el repositorio y navega al directorio del proyecto.

2. **Inicializar Terraform:**
    Ejecuta el comando `terraform init` para descargar los proveedores y módulos necesarios.

3. **Revisar el plan de ejecución:**
    Usa el comando `terraform plan` para visualizar el plan de ejecución y los cambios que Terraform realizará en tu infraestructura.

4. **Aplicar los cambios:**
    Ejecuta `terraform apply` para crear la infraestructura definida en el proyecto.

5. **Destruir la infraestructura:**
    Si deseas eliminar la infraestructura creada, puedes ejecutar el comando `terraform destroy`.

## Requisitos previos

- Tener [Terraform](https://www.terraform.io/downloads) instalado en tu máquina.
- Una cuenta de AWS con las credenciales adecuadas configuradas en tu entorno local para permitir que Terraform interactúe con AWS.

## Notas

- Los módulos del proyecto están ubicados en el directorio `./modules`. Cada módulo está diseñado para crear un recurso específico de infraestructura.
- Puedes personalizar cada módulo para adaptarlo a tus necesidades, como modificar configuraciones de recursos o agregar nuevos módulos.

