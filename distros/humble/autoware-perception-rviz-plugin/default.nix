
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, autoware-cmake, autoware-lanelet2-extension, autoware-lint-common, autoware-map-msgs, autoware-perception-msgs, boost, qt5, rviz-common, rviz-default-plugins, rviz2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-autoware-perception-rviz-plugin";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_rviz_plugins-release/archive/release/humble/autoware_perception_rviz_plugin/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "f1be0894b41fcb79a9bdbf9913492f4b8ef4e02ac84c6b0190afb1634ea19968";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake autoware-cmake boost ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-lanelet2-extension autoware-map-msgs autoware-perception-msgs qt5.qtbase rviz-common rviz-default-plugins rviz2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake autoware-cmake ];

  meta = {
    description = "Contains plugins to visualize object detection outputs";
    license = with lib.licenses; [ asl20 "CC-BY-SA-4.0" ];
  };
}
