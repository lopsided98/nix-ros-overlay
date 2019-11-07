
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, lex-common-msgs, aws-ros2-common, ament-cmake, ament-lint-common, lex-common, ament-cmake-gmock, launch-ros, launch, aws-common, rclcpp, python3Packages, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-lex-node";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/lex_node-release/archive/release/dashing/lex_node/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "a12bb7e17366477733810eab562f7319b3af32824247f04edb4d3aa683ad8cc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ lex-common-msgs aws-ros2-common lex-common aws-common rclcpp ];
  checkInputs = [ ament-lint-auto ament-lint-common ament-cmake-gmock ];
  propagatedBuildInputs = [ lex-common-msgs aws-ros2-common launch-ros lex-common launch python3Packages.pyyaml aws-common rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package providing a ROS node for interacting with Amazon Lex'';
    license = with lib.licenses; [ asl20 ];
  };
}
