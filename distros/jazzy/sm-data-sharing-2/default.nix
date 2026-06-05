
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-keyboard, cl-ros2-timer, plasma5Packages, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-data-sharing-2";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_data_sharing_2/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "ef94437609fa04888fa2d705301d8e5e003525dcade8c4c2549e914de29bf89e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-keyboard cl-ros2-timer plasma5Packages.konsole smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstrates sharing data across multiple states using a superstate. Client behaviors access the superstate via getParentState() as the behavior-accessible equivalent of context&lt;&gt;().";
    license = with lib.licenses; [ asl20 ];
  };
}
