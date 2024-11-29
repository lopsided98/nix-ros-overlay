
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, compressed-depth-image-transport, cv-bridge, image-geometry, image-transport, pcl-conversions, pcl-ros, ros2launch, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-adi-3dtof-image-stitching";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_3dtof_image_stitching-release/archive/release/humble/adi_3dtof_image_stitching/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "c161c2da36275c6ca6d2aca4a5fee1e17a353812ca62eff7fcc34040837cebac";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ compressed-depth-image-transport cv-bridge image-geometry image-transport pcl-conversions pcl-ros ros2launch sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The adi_3dtof_image_stitching package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
