
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, clang, cmake, eigen, opencv }:
buildRosPackage {
  pname = "ros-iron-apriltag-mit";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/apriltag_mit-release/archive/release/iron/apriltag_mit/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "cc3b2e08015e2572d6e1118319c4cc8c1678256171233cc7a01607772b4f9e42";
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
