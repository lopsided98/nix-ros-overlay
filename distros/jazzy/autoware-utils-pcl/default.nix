
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-utils-tf, pcl-conversions, pcl-ros }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-pcl";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_pcl/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "5b4506f96588b9a2a7fe313661843f16157a8984df6d4b34942fab437855fc10";
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
