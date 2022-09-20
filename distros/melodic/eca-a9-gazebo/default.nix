
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eca-a9-control, eca-a9-description }:
buildRosPackage {
  pname = "ros-melodic-eca-a9-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/eca_a9-release/archive/release/melodic/eca_a9_gazebo/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "e2dce04036c923f6df2b176be5b73ffc2f2f7002fb0c2db7f54d2ea686499d9e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eca-a9-control eca-a9-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
