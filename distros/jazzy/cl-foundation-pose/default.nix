
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, smacc2, tf2-geometry-msgs, tf2-ros, vision-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cl-foundation-pose";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/cl_foundation_pose/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "98f1cc88ba3b019c480bc89ce80e0e351569ffd8c75fa4ca6d96f31fcd72705e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs smacc2 tf2-geometry-msgs tf2-ros vision-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "SMACC2 client for NVIDIA Foundation Pose object tracking";
    license = with lib.licenses; [ asl20 ];
  };
}
