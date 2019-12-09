
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, yocs-math-toolkit, std-msgs, catkin, roscpp, yocs-msgs, ar-track-alvar-msgs, yocs-ar-marker-tracking }:
buildRosPackage {
  pname = "ros-melodic-yocs-ar-pair-tracking";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_ar_pair_tracking/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "60179e49a3644effdd14bf503e183c3ef7c0690f550b89e64847399f3934c7df";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit std-msgs roscpp yocs-msgs ar-track-alvar-msgs yocs-ar-marker-tracking ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs yocs-math-toolkit std-msgs roscpp yocs-msgs ar-track-alvar-msgs yocs-ar-marker-tracking ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The AR pair tracking package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
