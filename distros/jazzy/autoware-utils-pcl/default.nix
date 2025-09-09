
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-tf, pcl-conversions, pcl-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-pcl";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_pcl/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "272fa73e952257b0d1dba980966ed31e6c1ec11c0a71c34275bcaafd7e632e6c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-utils-tf pcl-conversions pcl-ros ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_pcl package";
    license = with lib.licenses; [ asl20 ];
  };
}
