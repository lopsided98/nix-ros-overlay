
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-depth-image-transport, cv-bridge, eigen-conversions, image-geometry, image-transport, image-view, pcl-ros, roscpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-adi-3dtof-image-stitching";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/raebelchristo-adi/adi_3dtof_image_stitching-release/archive/release/noetic/adi_3dtof_image_stitching/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "dfe7b7b307da18b147715d0299671f2e30a1d046f9a286e179a5b1bf62004269";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ compressed-depth-image-transport cv-bridge eigen-conversions image-geometry image-transport image-view pcl-ros roscpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The adi_3dtof_image_stitching package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
