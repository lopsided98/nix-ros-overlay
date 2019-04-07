
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-delphi-mrr-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/delphi_mrr_msgs/2.3.1-0.tar.gz;
    sha256 = "8fb994bb02623ad2011740e1b929b4a935c6944ddaa18100ee09fb6d62e7624a";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the Delphi MRR'';
    #license = lib.licenses.GPLv3;
  };
}
