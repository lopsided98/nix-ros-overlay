
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, husky-msgs, roslint, diff-drive-controller, sensor-msgs, catkin, topic-tools, diagnostic-updater, husky-description, diagnostic-msgs, roslaunch, roscpp, husky-control, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-husky-base";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_base/0.3.2-0.tar.gz;
    sha256 = "6026539875a7a353f24452cd4877a980c2640f2e8e65836396706874002d539c";
  };

  propagatedBuildInputs = [ controller-manager hardware-interface husky-msgs diff-drive-controller sensor-msgs diagnostic-updater husky-description topic-tools diagnostic-msgs roscpp husky-control geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ controller-manager hardware-interface husky-msgs roslint sensor-msgs catkin diagnostic-updater diagnostic-msgs roslaunch roscpp ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    #license = lib.licenses.BSD;
  };
}
