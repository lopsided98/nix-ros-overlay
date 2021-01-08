
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-costmap-converter-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/costmap_converter-ros2-release/archive/release/dashing/costmap_converter_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "2abd489f2e371676dc61993cfd89930cd264df5bc0bf0d67aae908f74c475c0c";
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
