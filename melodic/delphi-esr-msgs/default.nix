
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-delphi-esr-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/delphi_esr_msgs/2.3.1-0.tar.gz;
    sha256 = "72672fb148635e3f817ca5ee1c5b6374ab20470bd9275a8de72a87da26c25888";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the Delphi ESR'';
    #license = lib.licenses.MIT;
  };
}
