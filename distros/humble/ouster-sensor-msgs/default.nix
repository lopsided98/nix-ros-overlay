
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ouster-sensor-msgs";
  version = "0.13.14-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ouster-ros-release/archive/release/humble/ouster_sensor_msgs/0.13.14-2.tar.gz";
    name = "0.13.14-2.tar.gz";
    sha256 = "e2c6a2be27588ea5b894cc3f18c4ef705741e7d5f301fa16046d5c49cb901892";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ouster_ros message and service definitions";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
