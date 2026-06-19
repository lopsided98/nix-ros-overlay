
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, generate-parameter-library, rclcpp, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tf-namespace-bridge";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/husarion/tf_namespace_bridge-release/archive/release/jazzy/tf_namespace_bridge/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d607e9f26f05dec0b3f933c73aa9eefa58822a28a973c8750f8dafc68406c796";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ generate-parameter-library rclcpp tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bridge namespaced TF topics into the global TF tree for multi-robot setups";
    license = with lib.licenses; [ asl20 ];
  };
}
