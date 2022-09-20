
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-delphi-mrr-msgs";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/delphi_mrr_msgs/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "ae772ab11e180eade5e1f1cde8f83d403b4bd2c3ae87fc0964ac20cf49d1cf39";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ros-environment ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the Delphi MRR'';
    license = with lib.licenses; [ mit ];
  };
}
