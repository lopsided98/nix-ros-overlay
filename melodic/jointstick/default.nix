
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, catkin, nav-msgs, controller-manager-msgs, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-jointstick";
  version = "0.9.1-r2";

  src = fetchurl {
    url = https://github.com/gstavrinos/jointstick-release/archive/release/melodic/jointstick/0.9.1-2.tar.gz;
    sha256 = "40810fdb769af4467b634649a2cfabf49337ae5e00fe08f034fe0555036ba39f";
  };

  buildInputs = [ trajectory-msgs sensor-msgs nav-msgs controller-manager-msgs std-msgs geometry-msgs ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs nav-msgs controller-manager-msgs std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move any joint with any controller!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
