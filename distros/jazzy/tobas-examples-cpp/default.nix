
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-command-msgs, tobas-constants, tobas-mission-items, tobas-mission-msgs, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-examples-cpp";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_examples_cpp/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "757778f6d394e78c619539324a0cdcaff9fabf0b6de55c86b677cad640ad549b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-command-msgs tobas-constants tobas-mission-items tobas-mission-msgs tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ ROS 2 example nodes and components for Tobas APIs.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
