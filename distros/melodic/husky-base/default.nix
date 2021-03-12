
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, diff-drive-controller, geometry-msgs, hardware-interface, husky-control, husky-description, husky-msgs, roscpp, roslaunch, roslint, sensor-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-husky-base";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_base/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "013f11ab82a8b764419cb6785db7e9ad0307f5e30ea84680ca6516fa6812b05f";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ controller-manager diagnostic-aggregator diagnostic-msgs diagnostic-updater diff-drive-controller geometry-msgs hardware-interface husky-control husky-description husky-msgs roscpp sensor-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
