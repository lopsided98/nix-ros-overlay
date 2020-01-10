
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-delphi-srr-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = "https://github.com/astuff/astuff_sensor_msgs-release/archive/release/melodic/delphi_srr_msgs/2.3.1-0.tar.gz";
    name = "2.3.1-0.tar.gz";
    sha256 = "86a2a9e1e5dbdebd87011a95f0ae7b631a62638f0117a009a7f6159833a285e7";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for the Delphi SRR'';
    license = with lib.licenses; [ mit ];
  };
}
