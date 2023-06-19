
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-metrics-msgs";
  version = "0.14.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/neonavigation_metrics_msgs/0.14.0-1.tar.gz";
    name = "0.14.0-1.tar.gz";
    sha256 = "e5ab2ca6ccc0515264051b7bba2b9fc9b37fb4032dd6081e4bd673126d731419";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metrics message definitions for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
