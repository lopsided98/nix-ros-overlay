
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-simple-pure-pursuit }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-control";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_control/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "9a6f8c7710e7c4904fed68c42fb5f4a33c6afaafadfaf595d698e9c7af493b6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-simple-pure-pursuit ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
