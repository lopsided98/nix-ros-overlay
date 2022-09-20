
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar-msgs, catkin, geometry-msgs, roscpp, sensor-msgs, std-msgs, yocs-ar-marker-tracking, yocs-math-toolkit, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-ar-pair-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_ar_pair_tracking/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "60179e49a3644effdd14bf503e183c3ef7c0690f550b89e64847399f3934c7df";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ar-track-alvar-msgs geometry-msgs roscpp sensor-msgs std-msgs yocs-ar-marker-tracking yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The AR pair tracking package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
