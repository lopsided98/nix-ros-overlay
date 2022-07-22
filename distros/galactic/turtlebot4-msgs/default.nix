
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "e73f3c3470a535dfd614e85824e38c740fc8bf7c4862aec073f4ed6bebe2ad69";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
