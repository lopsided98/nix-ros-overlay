
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cl-keyboard, cl-ros2-timer, plasma5Packages, smacc2 }:
buildRosPackage {
  pname = "ros-jazzy-sm-data-sharing-1";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/sm_data_sharing_1/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "469b0ae7e026639f4668c7037294b67caa9bb4baeafb33f449d424a24783bfca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cl-keyboard cl-ros2-timer plasma5Packages.konsole smacc2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstrates sharing data across multiple states and clients using a state-machine-scoped component on a local client.";
    license = with lib.licenses; [ asl20 ];
  };
}
