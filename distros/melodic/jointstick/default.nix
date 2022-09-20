
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager-msgs, geometry-msgs, nav-msgs, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-jointstick";
  version = "0.9.1-r2";

  src = fetchurl {
    url = "https://github.com/gstavrinos/jointstick-release/archive/release/melodic/jointstick/0.9.1-2.tar.gz";
    name = "0.9.1-2.tar.gz";
    sha256 = "40810fdb769af4467b634649a2cfabf49337ae5e00fe08f034fe0555036ba39f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager-msgs geometry-msgs nav-msgs sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move any joint with any controller!'';
    license = with lib.licenses; [ bsd3 ];
  };
}
