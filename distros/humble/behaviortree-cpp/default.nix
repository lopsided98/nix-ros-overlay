
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cppzmq, rclcpp, ros-environment, sqlite }:
buildRosPackage {
  pname = "ros-humble-behaviortree-cpp";
  version = "4.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/behaviortree_cpp_v4-release/archive/release/humble/behaviortree_cpp/4.3.6-1.tar.gz";
    name = "4.3.6-1.tar.gz";
    sha256 = "153c9db82db641f3f11e0e70dc864dea8d62b7cf8631806becd29afff5718ca6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cppzmq rclcpp sqlite ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides the Behavior Trees core library.'';
    license = with lib.licenses; [ mit ];
  };
}
