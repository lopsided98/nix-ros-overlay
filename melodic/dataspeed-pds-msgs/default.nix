
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rosbag-migration-rule, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-msgs";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_msgs/1.0.2-0.tar.gz;
    sha256 = "9b0543765ab6f1173f9e4dc3f8e38a3be0843b3a9a439bcfdffd505a1b436ba5";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs rosbag-migration-rule message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
