
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-tutorials-interfaces, ament-lint-auto, ament-lint-common, rclpy }:
buildRosPackage {
  pname = "ros-rolling-action-tutorials-py";
  version = "0.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/action_tutorials_py/0.23.0-1.tar.gz";
    name = "0.23.0-1.tar.gz";
    sha256 = "69f1fc8b7c77f166721b3676ac76e57d595fcfb4e310658207a215d648597228";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
