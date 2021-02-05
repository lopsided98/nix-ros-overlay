
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, cmake-modules, control-toolbox, eigen, eigen-conversions, geometry-msgs, mavros, mavros-extras, roscpp, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-test-mavros";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/test_mavros/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "0774c44d48b2cba0a802d8813429c5ec6df04f36aeecd0233d6de007dcaf4d10";
  };

  buildType = "catkin";
  buildInputs = [ angles cmake-modules ];
  propagatedBuildInputs = [ control-toolbox eigen eigen-conversions geometry-msgs mavros mavros-extras roscpp std-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
