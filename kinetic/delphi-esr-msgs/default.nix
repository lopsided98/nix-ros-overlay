
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-delphi-esr-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/delphi_esr_msgs/2.3.1-0.tar.gz;
    sha256 = "261194c642ebc44637c0d1ea9b26ae1150810dfc5082d8be846def7e2d48b82d";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Message definitions for the Delphi ESR'';
    #license = lib.licenses.MIT;
  };
}
