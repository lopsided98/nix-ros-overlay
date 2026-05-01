
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-kompass-interfaces";
  version = "0.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/lyrical/kompass_interfaces/0.4.1-3.tar.gz";
    name = "0.4.1-3.tar.gz";
    sha256 = "d19323868419577aa203cdb1f1b64ce1908b1be68d62c8ddf271bbdbc9d5765a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS2 Interfaces for Kompass";
    license = with lib.licenses; [ mit ];
  };
}
