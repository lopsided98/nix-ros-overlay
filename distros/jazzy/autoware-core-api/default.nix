
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-adaptors, autoware-cmake, autoware-default-adapi, autoware-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-autoware-core-api";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/jazzy/autoware_core_api/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "ff08a5b9c0703117d29689d97d3cd4fa4a7c10a336d9657e6f5c74dcb91edc45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-adaptors autoware-default-adapi ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_api package";
    license = with lib.licenses; [ asl20 ];
  };
}
