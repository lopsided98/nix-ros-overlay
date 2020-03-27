
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-urg-node-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urg_node_msgs-release/archive/release/eloquent/urg_node_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d39088376083e5e6052edec5984a997f6b4615e5d0a8c2dcaceefee2ff51a8f2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''urg_node_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
