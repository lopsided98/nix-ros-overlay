
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, eigen, opencv }:
buildRosPackage {
  pname = "ros-humble-apriltag-mit";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_mit-release/archive/release/humble/apriltag_mit/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "f35fc3b64af7c4b1183576871aafd30d6fffc47506e401acbbb71d601bcf2372";
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
