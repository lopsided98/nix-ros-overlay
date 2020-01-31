
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-costmap-converter-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-ros2-release/archive/release/eloquent/costmap_converter_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "734517382100ace03f5109c3534687f1ca7a492beab2dfe1a413a08f6a1b51ed";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Package containing message types for costmap conversion'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
