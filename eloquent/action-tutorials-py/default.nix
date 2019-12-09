
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclpy, ament-lint-common, ament-lint-auto, action-tutorials-interfaces }:
buildRosPackage {
  pname = "ros-eloquent-action-tutorials-py";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/action_tutorials_py/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "f4e280944dd600349ad6774d411956f611b25c0fcc160cb1bf1ae774a4f25ca9";
  };

  buildType = "ament_python";
  buildInputs = [ action-tutorials-interfaces ];
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ action-tutorials-interfaces rclpy ];

  meta = {
    description = ''Python action tutorial code'';
    license = with lib.licenses; [ asl20 ];
  };
}
