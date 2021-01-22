
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eca-a9-control, eca-a9-description }:
buildRosPackage {
  pname = "ros-kinetic-eca-a9-gazebo";
  version = "0.1.6";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/eca_a9-release/archive/release/kinetic/eca_a9_gazebo/0.1.6-0.tar.gz";
    name = "0.1.6-0.tar.gz";
    sha256 = "5a6c240713959c1635e23bf9cb430ba7f263a4c243c354428900ddc5a4205c40";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eca-a9-control eca-a9-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with launch files for demonstrations with the ECA A9 AUV'';
    license = with lib.licenses; [ asl20 ];
  };
}
