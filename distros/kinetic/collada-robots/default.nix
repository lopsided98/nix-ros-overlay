
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, git, unzip }:
buildRosPackage {
  pname = "ros-kinetic-collada-robots";
  version = "0.0.6";

  src = fetchurl {
    url = "https://github.com/tork-a/openrave_planning-release/archive/release/kinetic/collada_robots/0.0.6-0.tar.gz";
    name = "0.0.6-0.tar.gz";
    sha256 = "a28835c9d60ebe5ccf281fa145ebee872889281e10d10f0e0aff20951cc2d86c";
  };

  buildType = "catkin";
  buildInputs = [ git unzip ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''COLLADA 1.5 Robot Models Repository

    This repository is associated with the Open Robotics Automation Virtual Environment (OpenRAVE). The open and view them, install OpenRAVE and execute:
    
    openrave XXX.zae
    
    The robots are augmented with information as described by the &quot;OpenRAVE&quot; profile here:
    http://openrave.programmingvision.com/index.php/Started:COLLADA
    
    *.zae files are zip archives which contain the raw collada 1.5 xml (dae).'';
    license = with lib.licenses; [ "T.D.B" ];
  };
}
