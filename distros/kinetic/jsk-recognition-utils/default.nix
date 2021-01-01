
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, image-view, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, libyamlcpp, message-generation, message-runtime, pcl-msgs, pcl-ros, pythonPackages, qt5, sensor-msgs, std-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jsk-recognition-utils";
  version = "1.2.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/kinetic/jsk_recognition_utils/1.2.15-1.tar.gz";
    name = "1.2.15-1.tar.gz";
    sha256 = "18a316ff3533b7e5fff9774d3d95429aa8872a5bb1c27d175a77f61ba2850c49";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure message-generation pythonPackages.cython qt5.qtbase ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs image-geometry image-view jsk-recognition-msgs jsk-topic-tools libyamlcpp message-runtime pcl-msgs pcl-ros pythonPackages.chainer pythonPackages.scikitimage sensor-msgs std-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
