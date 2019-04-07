
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, yocs-math-toolkit, yocs-msgs, ar-track-alvar-msgs, yocs-ar-marker-tracking, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-ar-pair-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_ar_pair_tracking/0.8.2-0.tar.gz;
    sha256 = "60179e49a3644effdd14bf503e183c3ef7c0690f550b89e64847399f3934c7df";
  };

  buildInputs = [ ar-track-alvar-msgs yocs-ar-marker-tracking std-msgs sensor-msgs roscpp yocs-math-toolkit yocs-msgs geometry-msgs ];
  propagatedBuildInputs = [ ar-track-alvar-msgs yocs-ar-marker-tracking std-msgs sensor-msgs roscpp yocs-math-toolkit yocs-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The AR pair tracking package'';
    #license = lib.licenses.BSD;
  };
}
