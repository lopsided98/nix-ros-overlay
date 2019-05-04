
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, husky-msgs, roslint, diff-drive-controller, sensor-msgs, catkin, topic-tools, diagnostic-updater, husky-description, diagnostic-msgs, roslaunch, roscpp, husky-control, geometry-msgs, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-husky-base";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_base/0.3.3-0.tar.gz;
    sha256 = "44df37260e5d6b7931ad069da17c9575b219037b9835fc5b308c9079d68c3d8e";
  };

  buildInputs = [ controller-manager hardware-interface husky-msgs roslint sensor-msgs diagnostic-updater diagnostic-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ controller-manager hardware-interface husky-msgs diff-drive-controller sensor-msgs diagnostic-updater husky-description topic-tools diagnostic-msgs roscpp husky-control geometry-msgs diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Clearpath Husky robot driver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
