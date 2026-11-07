
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-algorithm, tobas-control, tobas-dsp, tobas-eigen-conversions, tobas-eigen-msgs, tobas-eigen-msgs-adapter, tobas-eigen-tools, tobas-geographic, tobas-ic-drivers, tobas-ic-drivers-ros, tobas-kdl, tobas-kdl-conversions, tobas-kdl-msgs, tobas-kdl-msgs-adapter, tobas-linux, tobas-math, tobas-nlp, tobas-path-tools, tobas-quadprog, tobas-ros2-tools, tobas-std-msgs, tobas-std-msgs-adapter, tobas-std-tools, tobas-string-tools, tobas-time-tools, tobas-trajectory-generation, tobas-urdf, tobas-xml-tools, tobas-yaml-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-common";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_common/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "5e3d9e828d322102c22355cd2b36fc1a61b67767b5fed4edf2a1c00e72a5ee39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-algorithm tobas-control tobas-dsp tobas-eigen-conversions tobas-eigen-msgs tobas-eigen-msgs-adapter tobas-eigen-tools tobas-geographic tobas-ic-drivers tobas-ic-drivers-ros tobas-kdl tobas-kdl-conversions tobas-kdl-msgs tobas-kdl-msgs-adapter tobas-linux tobas-math tobas-nlp tobas-path-tools tobas-quadprog tobas-ros2-tools tobas-std-msgs tobas-std-msgs-adapter tobas-std-tools tobas-string-tools tobas-time-tools tobas-trajectory-generation tobas-urdf tobas-xml-tools tobas-yaml-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Aggregation package for reusable Tobas C++ and ROS 2 utility libraries.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
