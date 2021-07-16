
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-control, pilz-status-indicator-rqt, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-moveit-config, prbt-support }:
buildRosPackage {
  pname = "ros-melodic-pilz-robots";
  version = "0.5.22-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/pilz_robots/0.5.22-1.tar.gz";
    name = "0.5.22-1.tar.gz";
    sha256 = "f11816e0e36ce2e491e5a10e0e73fe3cb0ff96a04fe9ecd78911e249e551f590";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-control pilz-status-indicator-rqt prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-moveit-config prbt-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage'';
    license = with lib.licenses; [ asl20 ];
  };
}
