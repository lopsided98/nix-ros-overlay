
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-kompass-interfaces";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kompass-release/archive/release/rolling/kompass_interfaces/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "dd89e909de489c9588cae51a278736e16e1f9fb812e7ed1979130af52c8ee35c";
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
