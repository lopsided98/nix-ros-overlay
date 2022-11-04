
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-view, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, libyamlcpp, message-generation, message-runtime, pcl-msgs, pcl-ros, python3Packages, pythonPackages, qt5, sensor-msgs, std-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-recognition-utils";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/noetic/jsk_recognition_utils/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "feda9ac4dc973880fdd5747bb1ee2188cc71d5a556392eb81cc45fb40d0c3cb3";
  };

  buildType = "catkin";
  buildInputs = [ catkin dynamic-reconfigure message-generation python3Packages.setuptools pythonPackages.cython qt5.qtbase ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs image-geometry image-view jsk-recognition-msgs jsk-topic-tools libyamlcpp message-runtime pcl-msgs pcl-ros python3Packages.scikitimage pythonPackages.chainer sensor-msgs std-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
