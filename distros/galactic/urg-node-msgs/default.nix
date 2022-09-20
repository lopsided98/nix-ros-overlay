
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-urg-node-msgs";
  version = "1.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/galactic/urg_node_msgs/1.0.1-5.tar.gz";
    name = "1.0.1-5.tar.gz";
    sha256 = "ceda704b39a4be56dc8b56a62bcd73369dc2d920abcf3828e4b81b2e9a5fc6ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
