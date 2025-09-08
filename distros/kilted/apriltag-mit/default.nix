
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, eigen, opencv }:
buildRosPackage {
  pname = "ros-kilted-apriltag-mit";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_mit-release/archive/release/kilted/apriltag_mit/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "0be7c7d715d8fa009e76f257ffab93cea4fd54bd63ddcfb2b568db4a7b81e787";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost clang eigen opencv opencv.cxxdev ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "ROS2 package wrapper for the MIT apriltag detector";
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
