
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, husky-msgs, roslint, diff-drive-controller, sensor-msgs, catkin, topic-tools, diagnostic-updater, husky-description, diagnostic-msgs, roslaunch, roscpp, husky-control, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-husky-base";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_base/0.4.0-1.tar.gz;
    sha256 = "708e6e291b9639721a6641d2eb24fd072063d65a6dcdb0106bce7589558d91a5";
  };

  buildInputs = [ controller-manager hardware-interface husky-msgs roslint sensor-msgs diagnostic-updater diagnostic-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ controller-manager hardware-interface husky-msgs diff-drive-controller sensor-msgs diagnostic-updater husky-description topic-tools diagnostic-msgs roscpp husky-control geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
