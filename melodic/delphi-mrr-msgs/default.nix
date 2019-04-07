
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-delphi-mrr-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/delphi_mrr_msgs/2.3.1-0.tar.gz;
    sha256 = "0f47230b42a53123e4f4a38eba9c775e8388bd3d04350273601fbe9988df40a6";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the Delphi MRR'';
    #license = lib.licenses.GPLv3;
  };
}
