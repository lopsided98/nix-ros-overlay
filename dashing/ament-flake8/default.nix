
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-dashing-ament-flake8";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_flake8/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "b243a5b91471227d8331771ccc39e920eb4c0808f6af30e8b9ae09779380029b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ python3Packages.flake8 ament-lint ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
