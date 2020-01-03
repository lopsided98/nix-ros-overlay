
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, geometry-msgs, image-geometry, jsk-recognition-msgs, jsk-tools, jsk-topic-tools, libyamlcpp, message-generation, message-runtime, pcl-msgs, pcl-ros, pythonPackages, qt5, sensor-msgs, std-msgs, tf, tf-conversions, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-jsk-recognition-utils";
  version = "1.2.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/jsk_recognition_utils/1.2.10-0.tar.gz";
    name = "1.2.10-0.tar.gz";
    sha256 = "942d735c8f41e66b1417c0dea17f7e5e511a0b47154341c5f0c45359b89de95c";
  };

  buildType = "catkin";
  buildInputs = [ dynamic-reconfigure message-generation pythonPackages.cython qt5.qtbase ];
  checkInputs = [ jsk-tools ];
  propagatedBuildInputs = [ eigen-conversions geometry-msgs image-geometry jsk-recognition-msgs jsk-topic-tools libyamlcpp message-runtime pcl-msgs pcl-ros pythonPackages.chainer pythonPackages.scikitimage sensor-msgs std-msgs tf tf-conversions tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''C++ library about sensor model, geometrical modeling and perception.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
