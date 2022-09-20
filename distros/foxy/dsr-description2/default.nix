
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, joint-state-publisher-gui, launch, launch-ros, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-dsr-description2";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot2-release/archive/release/foxy/dsr_description2/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "7776c814f0cfabf18ca111f5ca111216c0d69ab7a74e73f1ce14d785d1659037";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python joint-state-publisher-gui launch launch-ros robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dsr_description2'';
    license = with lib.licenses; [ asl20 ];
  };
}
