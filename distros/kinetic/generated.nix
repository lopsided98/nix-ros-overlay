
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 abb = self.callPackage ./abb {};

 abb-driver = self.callPackage ./abb-driver {};

 abb-irb2400-moveit-config = self.callPackage ./abb-irb2400-moveit-config {};

 abb-irb2400-moveit-plugins = self.callPackage ./abb-irb2400-moveit-plugins {};

 abb-irb2400-support = self.callPackage ./abb-irb2400-support {};

 abb-irb4400-support = self.callPackage ./abb-irb4400-support {};

 abb-irb5400-support = self.callPackage ./abb-irb5400-support {};

 abb-irb6600-support = self.callPackage ./abb-irb6600-support {};

 abb-irb6640-moveit-config = self.callPackage ./abb-irb6640-moveit-config {};

 abb-irb6640-support = self.callPackage ./abb-irb6640-support {};

 abb-resources = self.callPackage ./abb-resources {};

 abseil-cpp = self.callPackage ./abseil-cpp {};

 acado = self.callPackage ./acado {};

 access-point-control = self.callPackage ./access-point-control {};

 ackermann-controller = self.callPackage ./ackermann-controller {};

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 ackermann-steering-controller = self.callPackage ./ackermann-steering-controller {};

 actionlib = self.callPackage ./actionlib {};

 actionlib-enhanced = self.callPackage ./actionlib-enhanced {};

 actionlib-lisp = self.callPackage ./actionlib-lisp {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 actionlib-tutorials = self.callPackage ./actionlib-tutorials {};

 addwa-local-planner = self.callPackage ./addwa-local-planner {};

 adi-driver = self.callPackage ./adi-driver {};

 agni-tf-tools = self.callPackage ./agni-tf-tools {};

 agv-msgs = self.callPackage ./agv-msgs {};

 agvs-common = self.callPackage ./agvs-common {};

 agvs-control = self.callPackage ./agvs-control {};

 agvs-description = self.callPackage ./agvs-description {};

 agvs-gazebo = self.callPackage ./agvs-gazebo {};

 agvs-pad = self.callPackage ./agvs-pad {};

 agvs-robot-control = self.callPackage ./agvs-robot-control {};

 agvs-sim = self.callPackage ./agvs-sim {};

 agvs-sim-bringup = self.callPackage ./agvs-sim-bringup {};

 ainstein-radar = self.callPackage ./ainstein-radar {};

 ainstein-radar-drivers = self.callPackage ./ainstein-radar-drivers {};

 ainstein-radar-filters = self.callPackage ./ainstein-radar-filters {};

 ainstein-radar-gazebo-plugins = self.callPackage ./ainstein-radar-gazebo-plugins {};

 ainstein-radar-msgs = self.callPackage ./ainstein-radar-msgs {};

 ainstein-radar-rviz-plugins = self.callPackage ./ainstein-radar-rviz-plugins {};

 ainstein-radar-tools = self.callPackage ./ainstein-radar-tools {};

 allocators = self.callPackage ./allocators {};

 amcl = self.callPackage ./amcl {};

 angles = self.callPackage ./angles {};

 app-manager = self.callPackage ./app-manager {};

 ar-track-alvar = self.callPackage ./ar-track-alvar {};

 ar-track-alvar-msgs = self.callPackage ./ar-track-alvar-msgs {};

 arbotix = self.callPackage ./arbotix {};

 arbotix-controllers = self.callPackage ./arbotix-controllers {};

 arbotix-firmware = self.callPackage ./arbotix-firmware {};

 arbotix-msgs = self.callPackage ./arbotix-msgs {};

 arbotix-python = self.callPackage ./arbotix-python {};

 arbotix-sensors = self.callPackage ./arbotix-sensors {};

 ardrone-autonomy = self.callPackage ./ardrone-autonomy {};

 arduino-daq = self.callPackage ./arduino-daq {};

 arm-navigation-msgs = self.callPackage ./arm-navigation-msgs {};

 aruco = self.callPackage ./aruco {};

 aruco-detect = self.callPackage ./aruco-detect {};

 aruco-msgs = self.callPackage ./aruco-msgs {};

 aruco-ros = self.callPackage ./aruco-ros {};

 asmach = self.callPackage ./asmach {};

 asmach-tutorials = self.callPackage ./asmach-tutorials {};

 asr-msgs = self.callPackage ./asr-msgs {};

 assimp-devel = self.callPackage ./assimp-devel {};

 assisted-teleop = self.callPackage ./assisted-teleop {};

 astra-camera = self.callPackage ./astra-camera {};

 astra-launch = self.callPackage ./astra-launch {};

 astuff-sensor-msgs = self.callPackage ./astuff-sensor-msgs {};

 async-comm = self.callPackage ./async-comm {};

 async-web-server-cpp = self.callPackage ./async-web-server-cpp {};

 ati-force-torque = self.callPackage ./ati-force-torque {};

 ati-ft-sensor = self.callPackage ./ati-ft-sensor {};

 audibot = self.callPackage ./audibot {};

 audibot-description = self.callPackage ./audibot-description {};

 audibot-gazebo = self.callPackage ./audibot-gazebo {};

 audio-capture = self.callPackage ./audio-capture {};

 audio-common = self.callPackage ./audio-common {};

 audio-common-msgs = self.callPackage ./audio-common-msgs {};

 audio-play = self.callPackage ./audio-play {};

 audio-to-spectrogram = self.callPackage ./audio-to-spectrogram {};

 automotive-autonomy-msgs = self.callPackage ./automotive-autonomy-msgs {};

 automotive-navigation-msgs = self.callPackage ./automotive-navigation-msgs {};

 automotive-platform-msgs = self.callPackage ./automotive-platform-msgs {};

 autoware-can-msgs = self.callPackage ./autoware-can-msgs {};

 autoware-config-msgs = self.callPackage ./autoware-config-msgs {};

 autoware-external-msgs = self.callPackage ./autoware-external-msgs {};

 autoware-map-msgs = self.callPackage ./autoware-map-msgs {};

 autoware-msgs = self.callPackage ./autoware-msgs {};

 autoware-system-msgs = self.callPackage ./autoware-system-msgs {};

 auv-msgs = self.callPackage ./auv-msgs {};

 avt-vimba-camera = self.callPackage ./avt-vimba-camera {};

 aws-common = self.callPackage ./aws-common {};

 aws-robomaker-simulation-ros-pkgs = self.callPackage ./aws-robomaker-simulation-ros-pkgs {};

 aws-ros1-common = self.callPackage ./aws-ros1-common {};

 axcli = self.callPackage ./axcli {};

 axis-camera = self.callPackage ./axis-camera {};

 backward-ros = self.callPackage ./backward-ros {};

 bagger = self.callPackage ./bagger {};

 baldor = self.callPackage ./baldor {};

 barrett-hand = self.callPackage ./barrett-hand {};

 barrett-hand-common = self.callPackage ./barrett-hand-common {};

 barrett-hand-control = self.callPackage ./barrett-hand-control {};

 barrett-hand-description = self.callPackage ./barrett-hand-description {};

 barrett-hand-gazebo = self.callPackage ./barrett-hand-gazebo {};

 barrett-hand-sim = self.callPackage ./barrett-hand-sim {};

 base-local-planner = self.callPackage ./base-local-planner {};

 bayesian-belief-networks = self.callPackage ./bayesian-belief-networks {};

 bcap = self.callPackage ./bcap {};

 bcap-core = self.callPackage ./bcap-core {};

 bcap-service = self.callPackage ./bcap-service {};

 bcap-service-test = self.callPackage ./bcap-service-test {};

 behaviortree-cpp = self.callPackage ./behaviortree-cpp {};

 behaviortree-cpp-v3 = self.callPackage ./behaviortree-cpp-v3 {};

 bfl = self.callPackage ./bfl {};

 bhand-controller = self.callPackage ./bhand-controller {};

 bin-pose-emulator = self.callPackage ./bin-pose-emulator {};

 bin-pose-msgs = self.callPackage ./bin-pose-msgs {};

 binpicking-simple-utils = self.callPackage ./binpicking-simple-utils {};

 binpicking-utils = self.callPackage ./binpicking-utils {};

 blender-gazebo = self.callPackage ./blender-gazebo {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 bondpy = self.callPackage ./bondpy {};

 bota-device-driver = self.callPackage ./bota-device-driver {};

 bota-driver = self.callPackage ./bota-driver {};

 bota-node = self.callPackage ./bota-node {};

 bota-signal-handler = self.callPackage ./bota-signal-handler {};

 bota-worker = self.callPackage ./bota-worker {};

 brics-actuator = self.callPackage ./brics-actuator {};

 calibration = self.callPackage ./calibration {};

 calibration-estimation = self.callPackage ./calibration-estimation {};

 calibration-launch = self.callPackage ./calibration-launch {};

 calibration-msgs = self.callPackage ./calibration-msgs {};

 calibration-setup-helper = self.callPackage ./calibration-setup-helper {};

 camera1394 = self.callPackage ./camera1394 {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 camera-info-manager-py = self.callPackage ./camera-info-manager-py {};

 camera-umd = self.callPackage ./camera-umd {};

 can-msgs = self.callPackage ./can-msgs {};

 canopen-402 = self.callPackage ./canopen-402 {};

 canopen-chain-node = self.callPackage ./canopen-chain-node {};

 canopen-master = self.callPackage ./canopen-master {};

 canopen-motor-node = self.callPackage ./canopen-motor-node {};

 capabilities = self.callPackage ./capabilities {};

 care-o-bot = self.callPackage ./care-o-bot {};

 care-o-bot-robot = self.callPackage ./care-o-bot-robot {};

 care-o-bot-simulation = self.callPackage ./care-o-bot-simulation {};

 carla-msgs = self.callPackage ./carla-msgs {};

 carrot-planner = self.callPackage ./carrot-planner {};

 cartesian-msgs = self.callPackage ./cartesian-msgs {};

 cartographer = self.callPackage ./cartographer {};

 cartographer-ros = self.callPackage ./cartographer-ros {};

 cartographer-ros-msgs = self.callPackage ./cartographer-ros-msgs {};

 cartographer-rviz = self.callPackage ./cartographer-rviz {};

 catch-ros = self.callPackage ./catch-ros {};

 catkin = self.callPackage ./catkin {};

 catkin-pip = self.callPackage ./catkin-pip {};

 catkin-virtualenv = self.callPackage ./catkin-virtualenv {};

 certifi = self.callPackage ./certifi {};

 checkerboard-detector = self.callPackage ./checkerboard-detector {};

 chomp-motion-planner = self.callPackage ./chomp-motion-planner {};

 cht10-node = self.callPackage ./cht10-node {};

 cis-camera = self.callPackage ./cis-camera {};

 cl-tf = self.callPackage ./cl-tf {};

 cl-tf2 = self.callPackage ./cl-tf2 {};

 cl-transforms = self.callPackage ./cl-transforms {};

 cl-transforms-stamped = self.callPackage ./cl-transforms-stamped {};

 cl-urdf = self.callPackage ./cl-urdf {};

 cl-utils = self.callPackage ./cl-utils {};

 class-loader = self.callPackage ./class-loader {};

 clear-costmap-recovery = self.callPackage ./clear-costmap-recovery {};

 click = self.callPackage ./click {};

 clock-relay = self.callPackage ./clock-relay {};

 cloudwatch-logger = self.callPackage ./cloudwatch-logger {};

 cloudwatch-logs-common = self.callPackage ./cloudwatch-logs-common {};

 cloudwatch-metrics-collector = self.callPackage ./cloudwatch-metrics-collector {};

 cloudwatch-metrics-common = self.callPackage ./cloudwatch-metrics-common {};

 cm-740-module = self.callPackage ./cm-740-module {};

 cmake-modules = self.callPackage ./cmake-modules {};

 cmd-vel-smoother = self.callPackage ./cmd-vel-smoother {};

 cob-3d-mapping-msgs = self.callPackage ./cob-3d-mapping-msgs {};

 cob-actions = self.callPackage ./cob-actions {};

 cob-android = self.callPackage ./cob-android {};

 cob-android-msgs = self.callPackage ./cob-android-msgs {};

 cob-android-resource-server = self.callPackage ./cob-android-resource-server {};

 cob-android-script-server = self.callPackage ./cob-android-script-server {};

 cob-android-settings = self.callPackage ./cob-android-settings {};

 cob-base-controller-utils = self.callPackage ./cob-base-controller-utils {};

 cob-base-drive-chain = self.callPackage ./cob-base-drive-chain {};

 cob-base-velocity-smoother = self.callPackage ./cob-base-velocity-smoother {};

 cob-bms-driver = self.callPackage ./cob-bms-driver {};

 cob-bringup = self.callPackage ./cob-bringup {};

 cob-bringup-sim = self.callPackage ./cob-bringup-sim {};

 cob-calibration-data = self.callPackage ./cob-calibration-data {};

 cob-cam3d-throttle = self.callPackage ./cob-cam3d-throttle {};

 cob-canopen-motor = self.callPackage ./cob-canopen-motor {};

 cob-cartesian-controller = self.callPackage ./cob-cartesian-controller {};

 cob-collision-monitor = self.callPackage ./cob-collision-monitor {};

 cob-collision-velocity-filter = self.callPackage ./cob-collision-velocity-filter {};

 cob-command-gui = self.callPackage ./cob-command-gui {};

 cob-command-tools = self.callPackage ./cob-command-tools {};

 cob-common = self.callPackage ./cob-common {};

 cob-control = self.callPackage ./cob-control {};

 cob-control-mode-adapter = self.callPackage ./cob-control-mode-adapter {};

 cob-control-msgs = self.callPackage ./cob-control-msgs {};

 cob-dashboard = self.callPackage ./cob-dashboard {};

 cob-default-env-config = self.callPackage ./cob-default-env-config {};

 cob-default-robot-behavior = self.callPackage ./cob-default-robot-behavior {};

 cob-default-robot-config = self.callPackage ./cob-default-robot-config {};

 cob-description = self.callPackage ./cob-description {};

 cob-docker-control = self.callPackage ./cob-docker-control {};

 cob-driver = self.callPackage ./cob-driver {};

 cob-elmo-homing = self.callPackage ./cob-elmo-homing {};

 cob-environments = self.callPackage ./cob-environments {};

 cob-extern = self.callPackage ./cob-extern {};

 cob-footprint-observer = self.callPackage ./cob-footprint-observer {};

 cob-frame-tracker = self.callPackage ./cob-frame-tracker {};

 cob-gazebo = self.callPackage ./cob-gazebo {};

 cob-gazebo-objects = self.callPackage ./cob-gazebo-objects {};

 cob-gazebo-plugins = self.callPackage ./cob-gazebo-plugins {};

 cob-gazebo-ros-control = self.callPackage ./cob-gazebo-ros-control {};

 cob-gazebo-tools = self.callPackage ./cob-gazebo-tools {};

 cob-gazebo-worlds = self.callPackage ./cob-gazebo-worlds {};

 cob-generic-can = self.callPackage ./cob-generic-can {};

 cob-grasp-generation = self.callPackage ./cob-grasp-generation {};

 cob-hand = self.callPackage ./cob-hand {};

 cob-hand-bridge = self.callPackage ./cob-hand-bridge {};

 cob-hardware-config = self.callPackage ./cob-hardware-config {};

 cob-hardware-emulation = self.callPackage ./cob-hardware-emulation {};

 cob-helper-tools = self.callPackage ./cob-helper-tools {};

 cob-image-flip = self.callPackage ./cob-image-flip {};

 cob-interactive-teleop = self.callPackage ./cob-interactive-teleop {};

 cob-light = self.callPackage ./cob-light {};

 cob-linear-nav = self.callPackage ./cob-linear-nav {};

 cob-lookat-action = self.callPackage ./cob-lookat-action {};

 cob-manipulation = self.callPackage ./cob-manipulation {};

 cob-map-accessibility-analysis = self.callPackage ./cob-map-accessibility-analysis {};

 cob-mapping-slam = self.callPackage ./cob-mapping-slam {};

 cob-mecanum-controller = self.callPackage ./cob-mecanum-controller {};

 cob-mimic = self.callPackage ./cob-mimic {};

 cob-model-identifier = self.callPackage ./cob-model-identifier {};

 cob-monitoring = self.callPackage ./cob-monitoring {};

 cob-moveit-bringup = self.callPackage ./cob-moveit-bringup {};

 cob-moveit-config = self.callPackage ./cob-moveit-config {};

 cob-moveit-interface = self.callPackage ./cob-moveit-interface {};

 cob-msgs = self.callPackage ./cob-msgs {};

 cob-navigation = self.callPackage ./cob-navigation {};

 cob-navigation-config = self.callPackage ./cob-navigation-config {};

 cob-navigation-global = self.callPackage ./cob-navigation-global {};

 cob-navigation-local = self.callPackage ./cob-navigation-local {};

 cob-navigation-slam = self.callPackage ./cob-navigation-slam {};

 cob-object-detection-msgs = self.callPackage ./cob-object-detection-msgs {};

 cob-object-detection-visualizer = self.callPackage ./cob-object-detection-visualizer {};

 cob-omni-drive-controller = self.callPackage ./cob-omni-drive-controller {};

 cob-perception-common = self.callPackage ./cob-perception-common {};

 cob-perception-msgs = self.callPackage ./cob-perception-msgs {};

 cob-phidget-em-state = self.callPackage ./cob-phidget-em-state {};

 cob-phidget-power-state = self.callPackage ./cob-phidget-power-state {};

 cob-phidgets = self.callPackage ./cob-phidgets {};

 cob-reflector-referencing = self.callPackage ./cob-reflector-referencing {};

 cob-relayboard = self.callPackage ./cob-relayboard {};

 cob-robots = self.callPackage ./cob-robots {};

 cob-safety-controller = self.callPackage ./cob-safety-controller {};

 cob-scan-unifier = self.callPackage ./cob-scan-unifier {};

 cob-script-server = self.callPackage ./cob-script-server {};

 cob-sick-lms1xx = self.callPackage ./cob-sick-lms1xx {};

 cob-sick-s300 = self.callPackage ./cob-sick-s300 {};

 cob-simulation = self.callPackage ./cob-simulation {};

 cob-sound = self.callPackage ./cob-sound {};

 cob-srvs = self.callPackage ./cob-srvs {};

 cob-substitute = self.callPackage ./cob-substitute {};

 cob-supported-robots = self.callPackage ./cob-supported-robots {};

 cob-teleop = self.callPackage ./cob-teleop {};

 cob-trajectory-controller = self.callPackage ./cob-trajectory-controller {};

 cob-tricycle-controller = self.callPackage ./cob-tricycle-controller {};

 cob-twist-controller = self.callPackage ./cob-twist-controller {};

 cob-undercarriage-ctrl = self.callPackage ./cob-undercarriage-ctrl {};

 cob-utilities = self.callPackage ./cob-utilities {};

 cob-vision-utils = self.callPackage ./cob-vision-utils {};

 cob-voltage-control = self.callPackage ./cob-voltage-control {};

 code-coverage = self.callPackage ./code-coverage {};

 codec-image-transport = self.callPackage ./codec-image-transport {};

 cog-publisher = self.callPackage ./cog-publisher {};

 collada-robots = self.callPackage ./collada-robots {};

 color-util = self.callPackage ./color-util {};

 combined-robot-hw = self.callPackage ./combined-robot-hw {};

 combined-robot-hw-tests = self.callPackage ./combined-robot-hw-tests {};

 common-msgs = self.callPackage ./common-msgs {};

 common-tutorials = self.callPackage ./common-tutorials {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 computer-status-msgs = self.callPackage ./computer-status-msgs {};

 concert-msgs = self.callPackage ./concert-msgs {};

 concert-service-msgs = self.callPackage ./concert-service-msgs {};

 concert-workflow-engine-msgs = self.callPackage ./concert-workflow-engine-msgs {};

 contact-states-observer = self.callPackage ./contact-states-observer {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 controller-manager-tests = self.callPackage ./controller-manager-tests {};

 convex-decomposition = self.callPackage ./convex-decomposition {};

 cost-map = self.callPackage ./cost-map {};

 cost-map-core = self.callPackage ./cost-map-core {};

 cost-map-cv = self.callPackage ./cost-map-cv {};

 cost-map-demos = self.callPackage ./cost-map-demos {};

 cost-map-msgs = self.callPackage ./cost-map-msgs {};

 cost-map-ros = self.callPackage ./cost-map-ros {};

 cost-map-visualisations = self.callPackage ./cost-map-visualisations {};

 costmap-2d = self.callPackage ./costmap-2d {};

 costmap-converter = self.callPackage ./costmap-converter {};

 costmap-cspace = self.callPackage ./costmap-cspace {};

 costmap-cspace-msgs = self.callPackage ./costmap-cspace-msgs {};

 costmap-prohibition-layer = self.callPackage ./costmap-prohibition-layer {};

 costmap-queue = self.callPackage ./costmap-queue {};

 cpp-common = self.callPackage ./cpp-common {};

 cpr-multimaster-tools = self.callPackage ./cpr-multimaster-tools {};

 create-dashboard = self.callPackage ./create-dashboard {};

 create-description = self.callPackage ./create-description {};

 create-driver = self.callPackage ./create-driver {};

 create-node = self.callPackage ./create-node {};

 criutils = self.callPackage ./criutils {};

 csm = self.callPackage ./csm {};

 cv-bridge = self.callPackage ./cv-bridge {};

 cv-camera = self.callPackage ./cv-camera {};

 darknet-ros-msgs = self.callPackage ./darknet-ros-msgs {};

 dataflow-lite = self.callPackage ./dataflow-lite {};

 dataspeed-can = self.callPackage ./dataspeed-can {};

 dataspeed-can-msg-filters = self.callPackage ./dataspeed-can-msg-filters {};

 dataspeed-can-tools = self.callPackage ./dataspeed-can-tools {};

 dataspeed-can-usb = self.callPackage ./dataspeed-can-usb {};

 dataspeed-pds = self.callPackage ./dataspeed-pds {};

 dataspeed-pds-can = self.callPackage ./dataspeed-pds-can {};

 dataspeed-pds-msgs = self.callPackage ./dataspeed-pds-msgs {};

 dataspeed-pds-rqt = self.callPackage ./dataspeed-pds-rqt {};

 dataspeed-pds-scripts = self.callPackage ./dataspeed-pds-scripts {};

 dataspeed-ulc = self.callPackage ./dataspeed-ulc {};

 dataspeed-ulc-can = self.callPackage ./dataspeed-ulc-can {};

 dataspeed-ulc-msgs = self.callPackage ./dataspeed-ulc-msgs {};

 dbw-fca = self.callPackage ./dbw-fca {};

 dbw-fca-can = self.callPackage ./dbw-fca-can {};

 dbw-fca-description = self.callPackage ./dbw-fca-description {};

 dbw-fca-joystick-demo = self.callPackage ./dbw-fca-joystick-demo {};

 dbw-fca-msgs = self.callPackage ./dbw-fca-msgs {};

 dbw-mkz = self.callPackage ./dbw-mkz {};

 dbw-mkz-can = self.callPackage ./dbw-mkz-can {};

 dbw-mkz-description = self.callPackage ./dbw-mkz-description {};

 dbw-mkz-joystick-demo = self.callPackage ./dbw-mkz-joystick-demo {};

 dbw-mkz-msgs = self.callPackage ./dbw-mkz-msgs {};

 ddwrt-access-point = self.callPackage ./ddwrt-access-point {};

 ddynamic-reconfigure = self.callPackage ./ddynamic-reconfigure {};

 ddynamic-reconfigure-python = self.callPackage ./ddynamic-reconfigure-python {};

 declination = self.callPackage ./declination {};

 default-cfg-fkie = self.callPackage ./default-cfg-fkie {};

 delphi-esr-msgs = self.callPackage ./delphi-esr-msgs {};

 delphi-mrr-msgs = self.callPackage ./delphi-mrr-msgs {};

 delphi-srr-msgs = self.callPackage ./delphi-srr-msgs {};

 dense-laser-assembler = self.callPackage ./dense-laser-assembler {};

 denso = self.callPackage ./denso {};

 denso-launch = self.callPackage ./denso-launch {};

 denso-robot-bringup = self.callPackage ./denso-robot-bringup {};

 denso-robot-control = self.callPackage ./denso-robot-control {};

 denso-robot-core = self.callPackage ./denso-robot-core {};

 denso-robot-core-test = self.callPackage ./denso-robot-core-test {};

 denso-robot-descriptions = self.callPackage ./denso-robot-descriptions {};

 denso-robot-gazebo = self.callPackage ./denso-robot-gazebo {};

 denso-robot-moveit-config = self.callPackage ./denso-robot-moveit-config {};

 denso-robot-ros = self.callPackage ./denso-robot-ros {};

 denso-ros-control = self.callPackage ./denso-ros-control {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 depthcloud-encoder = self.callPackage ./depthcloud-encoder {};

 depthimage-to-laserscan = self.callPackage ./depthimage-to-laserscan {};

 derived-object-msgs = self.callPackage ./derived-object-msgs {};

 desistek-saga-control = self.callPackage ./desistek-saga-control {};

 desistek-saga-description = self.callPackage ./desistek-saga-description {};

 desistek-saga-gazebo = self.callPackage ./desistek-saga-gazebo {};

 desktop = self.callPackage ./desktop {};

 desktop-full = self.callPackage ./desktop-full {};

 dgps-ros = self.callPackage ./dgps-ros {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-analysis = self.callPackage ./diagnostic-analysis {};

 diagnostic-common-diagnostics = self.callPackage ./diagnostic-common-diagnostics {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diagnostics = self.callPackage ./diagnostics {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 distance-map = self.callPackage ./distance-map {};

 distance-map-core = self.callPackage ./distance-map-core {};

 distance-map-deadreck = self.callPackage ./distance-map-deadreck {};

 distance-map-msgs = self.callPackage ./distance-map-msgs {};

 distance-map-node = self.callPackage ./distance-map-node {};

 distance-map-opencv = self.callPackage ./distance-map-opencv {};

 distance-map-rviz = self.callPackage ./distance-map-rviz {};

 distance-map-tools = self.callPackage ./distance-map-tools {};

 dlux-global-planner = self.callPackage ./dlux-global-planner {};

 dlux-plugins = self.callPackage ./dlux-plugins {};

 dnn-detect = self.callPackage ./dnn-detect {};

 dockeros = self.callPackage ./dockeros {};

 downward = self.callPackage ./downward {};

 dr-base = self.callPackage ./dr-base {};

 dr-cmake = self.callPackage ./dr-cmake {};

 driver-base = self.callPackage ./driver-base {};

 driver-common = self.callPackage ./driver-common {};

 drone-wrapper = self.callPackage ./drone-wrapper {};

 dsr-description = self.callPackage ./dsr-description {};

 dsr-example-py = self.callPackage ./dsr-example-py {};

 dsr-gazebo = self.callPackage ./dsr-gazebo {};

 dsr-launcher = self.callPackage ./dsr-launcher {};

 dsr-msgs = self.callPackage ./dsr-msgs {};

 dual-quaternions = self.callPackage ./dual-quaternions {};

 dual-quaternions-ros = self.callPackage ./dual-quaternions-ros {};

 dwa-local-planner = self.callPackage ./dwa-local-planner {};

 dwb-critics = self.callPackage ./dwb-critics {};

 dwb-local-planner = self.callPackage ./dwb-local-planner {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

 dwb-plugins = self.callPackage ./dwb-plugins {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamic-reconfigure = self.callPackage ./dynamic-reconfigure {};

 dynamic-robot-state-publisher = self.callPackage ./dynamic-robot-state-publisher {};

 dynamic-tf-publisher = self.callPackage ./dynamic-tf-publisher {};

 dynamixel-controllers = self.callPackage ./dynamixel-controllers {};

 dynamixel-driver = self.callPackage ./dynamixel-driver {};

 dynamixel-motor = self.callPackage ./dynamixel-motor {};

 dynamixel-msgs = self.callPackage ./dynamixel-msgs {};

 dynamixel-sdk = self.callPackage ./dynamixel-sdk {};

 dynamixel-tutorials = self.callPackage ./dynamixel-tutorials {};

 dynamixel-workbench = self.callPackage ./dynamixel-workbench {};

 dynamixel-workbench-controllers = self.callPackage ./dynamixel-workbench-controllers {};

 dynamixel-workbench-msgs = self.callPackage ./dynamixel-workbench-msgs {};

 dynamixel-workbench-operators = self.callPackage ./dynamixel-workbench-operators {};

 dynamixel-workbench-toolbox = self.callPackage ./dynamixel-workbench-toolbox {};

 dynpick-driver = self.callPackage ./dynpick-driver {};

 earth-rover-localization = self.callPackage ./earth-rover-localization {};

 earth-rover-piksi = self.callPackage ./earth-rover-piksi {};

 easy-markers = self.callPackage ./easy-markers {};

 eband-local-planner = self.callPackage ./eband-local-planner {};

 eca-a9-control = self.callPackage ./eca-a9-control {};

 eca-a9-description = self.callPackage ./eca-a9-description {};

 eca-a9-gazebo = self.callPackage ./eca-a9-gazebo {};

 ecl = self.callPackage ./ecl {};

 ecl-build = self.callPackage ./ecl-build {};

 ecl-command-line = self.callPackage ./ecl-command-line {};

 ecl-concepts = self.callPackage ./ecl-concepts {};

 ecl-config = self.callPackage ./ecl-config {};

 ecl-console = self.callPackage ./ecl-console {};

 ecl-containers = self.callPackage ./ecl-containers {};

 ecl-converters = self.callPackage ./ecl-converters {};

 ecl-converters-lite = self.callPackage ./ecl-converters-lite {};

 ecl-core = self.callPackage ./ecl-core {};

 ecl-core-apps = self.callPackage ./ecl-core-apps {};

 ecl-devices = self.callPackage ./ecl-devices {};

 ecl-eigen = self.callPackage ./ecl-eigen {};

 ecl-errors = self.callPackage ./ecl-errors {};

 ecl-exceptions = self.callPackage ./ecl-exceptions {};

 ecl-filesystem = self.callPackage ./ecl-filesystem {};

 ecl-formatters = self.callPackage ./ecl-formatters {};

 ecl-geometry = self.callPackage ./ecl-geometry {};

 ecl-io = self.callPackage ./ecl-io {};

 ecl-ipc = self.callPackage ./ecl-ipc {};

 ecl-license = self.callPackage ./ecl-license {};

 ecl-linear-algebra = self.callPackage ./ecl-linear-algebra {};

 ecl-lite = self.callPackage ./ecl-lite {};

 ecl-manipulation = self.callPackage ./ecl-manipulation {};

 ecl-manipulators = self.callPackage ./ecl-manipulators {};

 ecl-math = self.callPackage ./ecl-math {};

 ecl-mobile-robot = self.callPackage ./ecl-mobile-robot {};

 ecl-mpl = self.callPackage ./ecl-mpl {};

 ecl-navigation = self.callPackage ./ecl-navigation {};

 ecl-sigslots = self.callPackage ./ecl-sigslots {};

 ecl-sigslots-lite = self.callPackage ./ecl-sigslots-lite {};

 ecl-statistics = self.callPackage ./ecl-statistics {};

 ecl-streams = self.callPackage ./ecl-streams {};

 ecl-threads = self.callPackage ./ecl-threads {};

 ecl-time = self.callPackage ./ecl-time {};

 ecl-time-lite = self.callPackage ./ecl-time-lite {};

 ecl-tools = self.callPackage ./ecl-tools {};

 ecl-type-traits = self.callPackage ./ecl-type-traits {};

 ecl-utilities = self.callPackage ./ecl-utilities {};

 ecto-image-pipeline = self.callPackage ./ecto-image-pipeline {};

 ecto-opencv = self.callPackage ./ecto-opencv {};

 ecto-pcl = self.callPackage ./ecto-pcl {};

 ecto-ros = self.callPackage ./ecto-ros {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen-conversions = self.callPackage ./eigen-conversions {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigen-typekit = self.callPackage ./eigen-typekit {};

 eigenpy = self.callPackage ./eigenpy {};

 eml = self.callPackage ./eml {};

 epson-imu-driver = self.callPackage ./epson-imu-driver {};

 ethercat-grant = self.callPackage ./ethercat-grant {};

 ethercat-hardware = self.callPackage ./ethercat-hardware {};

 ethercat-manager = self.callPackage ./ethercat-manager {};

 ethercat-trigger-controllers = self.callPackage ./ethercat-trigger-controllers {};

 eus-assimp = self.callPackage ./eus-assimp {};

 eus-nlopt = self.callPackage ./eus-nlopt {};

 eus-qp = self.callPackage ./eus-qp {};

 eus-qpoases = self.callPackage ./eus-qpoases {};

 euslisp = self.callPackage ./euslisp {};

 eusurdf = self.callPackage ./eusurdf {};

 executive-smach = self.callPackage ./executive-smach {};

 executive-smach-visualization = self.callPackage ./executive-smach-visualization {};

 exotica = self.callPackage ./exotica {};

 exotica-aico-solver = self.callPackage ./exotica-aico-solver {};

 exotica-cartpole-dynamics-solver = self.callPackage ./exotica-cartpole-dynamics-solver {};

 exotica-collision-scene-fcl-latest = self.callPackage ./exotica-collision-scene-fcl-latest {};

 exotica-core = self.callPackage ./exotica-core {};

 exotica-core-task-maps = self.callPackage ./exotica-core-task-maps {};

 exotica-ddp-solver = self.callPackage ./exotica-ddp-solver {};

 exotica-double-integrator-dynamics-solver = self.callPackage ./exotica-double-integrator-dynamics-solver {};

 exotica-dynamics-solvers = self.callPackage ./exotica-dynamics-solvers {};

 exotica-examples = self.callPackage ./exotica-examples {};

 exotica-ik-solver = self.callPackage ./exotica-ik-solver {};

 exotica-ilqg-solver = self.callPackage ./exotica-ilqg-solver {};

 exotica-ilqr-solver = self.callPackage ./exotica-ilqr-solver {};

 exotica-levenberg-marquardt-solver = self.callPackage ./exotica-levenberg-marquardt-solver {};

 exotica-ompl-control-solver = self.callPackage ./exotica-ompl-control-solver {};

 exotica-ompl-solver = self.callPackage ./exotica-ompl-solver {};

 exotica-pendulum-dynamics-solver = self.callPackage ./exotica-pendulum-dynamics-solver {};

 exotica-pinocchio-dynamics-solver = self.callPackage ./exotica-pinocchio-dynamics-solver {};

 exotica-quadrotor-dynamics-solver = self.callPackage ./exotica-quadrotor-dynamics-solver {};

 exotica-scipy-solver = self.callPackage ./exotica-scipy-solver {};

 exotica-time-indexed-rrt-connect-solver = self.callPackage ./exotica-time-indexed-rrt-connect-solver {};

 exotica-val-description = self.callPackage ./exotica-val-description {};

 explore-lite = self.callPackage ./explore-lite {};

 ez-interactive-marker = self.callPackage ./ez-interactive-marker {};

 face-detector = self.callPackage ./face-detector {};

 fake-joint = self.callPackage ./fake-joint {};

 fake-joint-driver = self.callPackage ./fake-joint-driver {};

 fake-joint-launch = self.callPackage ./fake-joint-launch {};

 fake-localization = self.callPackage ./fake-localization {};

 fanuc-cr35ia-support = self.callPackage ./fanuc-cr35ia-support {};

 fanuc-cr7ia-support = self.callPackage ./fanuc-cr7ia-support {};

 fanuc-driver = self.callPackage ./fanuc-driver {};

 fanuc-lrmate200i-support = self.callPackage ./fanuc-lrmate200i-support {};

 fanuc-lrmate200ib-support = self.callPackage ./fanuc-lrmate200ib-support {};

 fanuc-lrmate200ic-support = self.callPackage ./fanuc-lrmate200ic-support {};

 fanuc-m10ia-support = self.callPackage ./fanuc-m10ia-support {};

 fanuc-m16ib-support = self.callPackage ./fanuc-m16ib-support {};

 fanuc-m20ia-support = self.callPackage ./fanuc-m20ia-support {};

 fanuc-m20ib-support = self.callPackage ./fanuc-m20ib-support {};

 fanuc-m430ia-support = self.callPackage ./fanuc-m430ia-support {};

 fanuc-m6ib-support = self.callPackage ./fanuc-m6ib-support {};

 fanuc-m710ic-support = self.callPackage ./fanuc-m710ic-support {};

 fanuc-m900ia-support = self.callPackage ./fanuc-m900ia-support {};

 fanuc-m900ib-support = self.callPackage ./fanuc-m900ib-support {};

 fanuc-r1000ia-support = self.callPackage ./fanuc-r1000ia-support {};

 fanuc-resources = self.callPackage ./fanuc-resources {};

 feed-the-troll = self.callPackage ./feed-the-troll {};

 feed-the-troll-msgs = self.callPackage ./feed-the-troll-msgs {};

 fetch-calibration = self.callPackage ./fetch-calibration {};

 fetch-depth-layer = self.callPackage ./fetch-depth-layer {};

 fetch-description = self.callPackage ./fetch-description {};

 fetch-gazebo = self.callPackage ./fetch-gazebo {};

 fetch-gazebo-demo = self.callPackage ./fetch-gazebo-demo {};

 fetch-ikfast-plugin = self.callPackage ./fetch-ikfast-plugin {};

 fetch-maps = self.callPackage ./fetch-maps {};

 fetch-moveit-config = self.callPackage ./fetch-moveit-config {};

 fetch-navigation = self.callPackage ./fetch-navigation {};

 fetch-ros = self.callPackage ./fetch-ros {};

 fetch-simulation = self.callPackage ./fetch-simulation {};

 fetch-teleop = self.callPackage ./fetch-teleop {};

 fetchit-challenge = self.callPackage ./fetchit-challenge {};

 ff = self.callPackage ./ff {};

 ffha = self.callPackage ./ffha {};

 fiducial-msgs = self.callPackage ./fiducial-msgs {};

 fiducial-slam = self.callPackage ./fiducial-slam {};

 fiducials = self.callPackage ./fiducials {};

 file-management = self.callPackage ./file-management {};

 file-uploader-msgs = self.callPackage ./file-uploader-msgs {};

 filters = self.callPackage ./filters {};

 find-object-2d = self.callPackage ./find-object-2d {};

 fingertip-pressure = self.callPackage ./fingertip-pressure {};

 fkie-potree-rviz-plugin = self.callPackage ./fkie-potree-rviz-plugin {};

 flask-cors = self.callPackage ./flask-cors {};

 flask-reverse-proxy = self.callPackage ./flask-reverse-proxy {};

 flatbuffers = self.callPackage ./flatbuffers {};

 flexbe-behavior-engine = self.callPackage ./flexbe-behavior-engine {};

 flexbe-core = self.callPackage ./flexbe-core {};

 flexbe-input = self.callPackage ./flexbe-input {};

 flexbe-mirror = self.callPackage ./flexbe-mirror {};

 flexbe-msgs = self.callPackage ./flexbe-msgs {};

 flexbe-onboard = self.callPackage ./flexbe-onboard {};

 flexbe-states = self.callPackage ./flexbe-states {};

 flexbe-testing = self.callPackage ./flexbe-testing {};

 flexbe-widget = self.callPackage ./flexbe-widget {};

 flir-boson-usb = self.callPackage ./flir-boson-usb {};

 flir-ptu-description = self.callPackage ./flir-ptu-description {};

 flir-ptu-driver = self.callPackage ./flir-ptu-driver {};

 flir-ptu-viz = self.callPackage ./flir-ptu-viz {};

 follow-waypoints = self.callPackage ./follow-waypoints {};

 footstep-planner = self.callPackage ./footstep-planner {};

 force-torque-sensor = self.callPackage ./force-torque-sensor {};

 force-torque-sensor-controller = self.callPackage ./force-torque-sensor-controller {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-controller = self.callPackage ./four-wheel-steering-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 frame-editor = self.callPackage ./frame-editor {};

 franka-control = self.callPackage ./franka-control {};

 franka-description = self.callPackage ./franka-description {};

 franka-example-controllers = self.callPackage ./franka-example-controllers {};

 franka-gripper = self.callPackage ./franka-gripper {};

 franka-hw = self.callPackage ./franka-hw {};

 franka-msgs = self.callPackage ./franka-msgs {};

 franka-ros = self.callPackage ./franka-ros {};

 franka-visualization = self.callPackage ./franka-visualization {};

 freenect-camera = self.callPackage ./freenect-camera {};

 freenect-launch = self.callPackage ./freenect-launch {};

 freenect-stack = self.callPackage ./freenect-stack {};

 frontier-exploration = self.callPackage ./frontier-exploration {};

 fsrobo-r = self.callPackage ./fsrobo-r {};

 fsrobo-r-bringup = self.callPackage ./fsrobo-r-bringup {};

 fsrobo-r-description = self.callPackage ./fsrobo-r-description {};

 fsrobo-r-driver = self.callPackage ./fsrobo-r-driver {};

 fsrobo-r-moveit-config = self.callPackage ./fsrobo-r-moveit-config {};

 fsrobo-r-msgs = self.callPackage ./fsrobo-r-msgs {};

 fsrobo-r-trajectory-filters = self.callPackage ./fsrobo-r-trajectory-filters {};

 ftm-msgs = self.callPackage ./ftm-msgs {};

 futaba-serial-servo = self.callPackage ./futaba-serial-servo {};

 fzi-icl-can = self.callPackage ./fzi-icl-can {};

 fzi-icl-comm = self.callPackage ./fzi-icl-comm {};

 fzi-icl-core = self.callPackage ./fzi-icl-core {};

 gateway-msgs = self.callPackage ./gateway-msgs {};

 gazebo-dev = self.callPackage ./gazebo-dev {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros-control = self.callPackage ./gazebo-ros-control {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 gcloud-speech = self.callPackage ./gcloud-speech {};

 gcloud-speech-msgs = self.callPackage ./gcloud-speech-msgs {};

 gcloud-speech-utils = self.callPackage ./gcloud-speech-utils {};

 gencpp = self.callPackage ./gencpp {};

 generic-throttle = self.callPackage ./generic-throttle {};

 geneus = self.callPackage ./geneus {};

 genjava = self.callPackage ./genjava {};

 genlisp = self.callPackage ./genlisp {};

 genmsg = self.callPackage ./genmsg {};

 gennodejs = self.callPackage ./gennodejs {};

 genpy = self.callPackage ./genpy {};

 genrs = self.callPackage ./genrs {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometric-shapes = self.callPackage ./geometric-shapes {};

 geometry = self.callPackage ./geometry {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 gl-dependency = self.callPackage ./gl-dependency {};

 glkh-solver = self.callPackage ./glkh-solver {};

 global-planner = self.callPackage ./global-planner {};

 global-planner-tests = self.callPackage ./global-planner-tests {};

 gmapping = self.callPackage ./gmapping {};

 gmplot = self.callPackage ./gmplot {};

 gmplot-msgs = self.callPackage ./gmplot-msgs {};

 gmplot-ros = self.callPackage ./gmplot-ros {};

 goal-passer = self.callPackage ./goal-passer {};

 gps-common = self.callPackage ./gps-common {};

 gps-goal = self.callPackage ./gps-goal {};

 gps-umd = self.callPackage ./gps-umd {};

 gpsd-client = self.callPackage ./gpsd-client {};

 graph-msgs = self.callPackage ./graph-msgs {};

 grasping-msgs = self.callPackage ./grasping-msgs {};

 grid-map = self.callPackage ./grid-map {};

 grid-map-core = self.callPackage ./grid-map-core {};

 grid-map-costmap-2d = self.callPackage ./grid-map-costmap-2d {};

 grid-map-cv = self.callPackage ./grid-map-cv {};

 grid-map-demos = self.callPackage ./grid-map-demos {};

 grid-map-filters = self.callPackage ./grid-map-filters {};

 grid-map-loader = self.callPackage ./grid-map-loader {};

 grid-map-msgs = self.callPackage ./grid-map-msgs {};

 grid-map-octomap = self.callPackage ./grid-map-octomap {};

 grid-map-pcl = self.callPackage ./grid-map-pcl {};

 grid-map-ros = self.callPackage ./grid-map-ros {};

 grid-map-rviz-plugin = self.callPackage ./grid-map-rviz-plugin {};

 grid-map-sdf = self.callPackage ./grid-map-sdf {};

 grid-map-visualization = self.callPackage ./grid-map-visualization {};

 gridmap-2d = self.callPackage ./gridmap-2d {};

 gripper-action-controller = self.callPackage ./gripper-action-controller {};

 grizzly-control = self.callPackage ./grizzly-control {};

 grizzly-description = self.callPackage ./grizzly-description {};

 grizzly-desktop = self.callPackage ./grizzly-desktop {};

 grizzly-gazebo = self.callPackage ./grizzly-gazebo {};

 grizzly-msgs = self.callPackage ./grizzly-msgs {};

 grizzly-navigation = self.callPackage ./grizzly-navigation {};

 grizzly-simulator = self.callPackage ./grizzly-simulator {};

 grizzly-viz = self.callPackage ./grizzly-viz {};

 grpc = self.callPackage ./grpc {};

 gscam = self.callPackage ./gscam {};

 gundam-robot = self.callPackage ./gundam-robot {};

 gundam-rx78-control = self.callPackage ./gundam-rx78-control {};

 gundam-rx78-description = self.callPackage ./gundam-rx78-description {};

 gundam-rx78-gazebo = self.callPackage ./gundam-rx78-gazebo {};

 gx-sound = self.callPackage ./gx-sound {};

 gx-sound-msgs = self.callPackage ./gx-sound-msgs {};

 gx-sound-player = self.callPackage ./gx-sound-player {};

 h264-encoder-core = self.callPackage ./h264-encoder-core {};

 h264-video-encoder = self.callPackage ./h264-video-encoder {};

 handeye = self.callPackage ./handeye {};

 handle-detector = self.callPackage ./handle-detector {};

 hardware-interface = self.callPackage ./hardware-interface {};

 haros-catkin = self.callPackage ./haros-catkin {};

 health-metric-collector = self.callPackage ./health-metric-collector {};

 hebi-cpp-api = self.callPackage ./hebi-cpp-api {};

 hebi-description = self.callPackage ./hebi-description {};

 hebiros-description = self.callPackage ./hebiros-description {};

 hector-components-description = self.callPackage ./hector-components-description {};

 hector-compressed-map-transport = self.callPackage ./hector-compressed-map-transport {};

 hector-gazebo = self.callPackage ./hector-gazebo {};

 hector-gazebo-plugins = self.callPackage ./hector-gazebo-plugins {};

 hector-gazebo-thermal-camera = self.callPackage ./hector-gazebo-thermal-camera {};

 hector-gazebo-worlds = self.callPackage ./hector-gazebo-worlds {};

 hector-geotiff = self.callPackage ./hector-geotiff {};

 hector-geotiff-plugins = self.callPackage ./hector-geotiff-plugins {};

 hector-imu-attitude-to-tf = self.callPackage ./hector-imu-attitude-to-tf {};

 hector-imu-tools = self.callPackage ./hector-imu-tools {};

 hector-localization = self.callPackage ./hector-localization {};

 hector-map-server = self.callPackage ./hector-map-server {};

 hector-map-tools = self.callPackage ./hector-map-tools {};

 hector-mapping = self.callPackage ./hector-mapping {};

 hector-marker-drawing = self.callPackage ./hector-marker-drawing {};

 hector-models = self.callPackage ./hector-models {};

 hector-nav-msgs = self.callPackage ./hector-nav-msgs {};

 hector-object-tracker = self.callPackage ./hector-object-tracker {};

 hector-pose-estimation = self.callPackage ./hector-pose-estimation {};

 hector-pose-estimation-core = self.callPackage ./hector-pose-estimation-core {};

 hector-sensors-description = self.callPackage ./hector-sensors-description {};

 hector-sensors-gazebo = self.callPackage ./hector-sensors-gazebo {};

 hector-slam = self.callPackage ./hector-slam {};

 hector-slam-launch = self.callPackage ./hector-slam-launch {};

 hector-trajectory-server = self.callPackage ./hector-trajectory-server {};

 hector-worldmodel = self.callPackage ./hector-worldmodel {};

 hector-worldmodel-geotiff-plugins = self.callPackage ./hector-worldmodel-geotiff-plugins {};

 hector-worldmodel-msgs = self.callPackage ./hector-worldmodel-msgs {};

 hector-xacro-tools = self.callPackage ./hector-xacro-tools {};

 heron-control = self.callPackage ./heron-control {};

 heron-description = self.callPackage ./heron-description {};

 heron-desktop = self.callPackage ./heron-desktop {};

 heron-gazebo = self.callPackage ./heron-gazebo {};

 heron-msgs = self.callPackage ./heron-msgs {};

 heron-simulator = self.callPackage ./heron-simulator {};

 heron-viz = self.callPackage ./heron-viz {};

 hfl-driver = self.callPackage ./hfl-driver {};

 hironx-calibration = self.callPackage ./hironx-calibration {};

 hironx-moveit-config = self.callPackage ./hironx-moveit-config {};

 hironx-ros-bridge = self.callPackage ./hironx-ros-bridge {};

 hls-lfcd-lds-driver = self.callPackage ./hls-lfcd-lds-driver {};

 hokuyo3d = self.callPackage ./hokuyo3d {};

 homer-map-manager = self.callPackage ./homer-map-manager {};

 homer-mapnav-msgs = self.callPackage ./homer-mapnav-msgs {};

 homer-mapping = self.callPackage ./homer-mapping {};

 homer-mary-tts = self.callPackage ./homer-mary-tts {};

 homer-msgs = self.callPackage ./homer-msgs {};

 homer-nav-libs = self.callPackage ./homer-nav-libs {};

 homer-navigation = self.callPackage ./homer-navigation {};

 homer-ptu-msgs = self.callPackage ./homer-ptu-msgs {};

 homer-robbie-architecture = self.callPackage ./homer-robbie-architecture {};

 homer-tts = self.callPackage ./homer-tts {};

 hostapd-access-point = self.callPackage ./hostapd-access-point {};

 household-objects-database-msgs = self.callPackage ./household-objects-database-msgs {};

 hpp-fcl = self.callPackage ./hpp-fcl {};

 hrpsys = self.callPackage ./hrpsys {};

 hrpsys-ros-bridge = self.callPackage ./hrpsys-ros-bridge {};

 hrpsys-tools = self.callPackage ./hrpsys-tools {};

 hsr-description = self.callPackage ./hsr-description {};

 hsr-meshes = self.callPackage ./hsr-meshes {};

 hugin-panorama = self.callPackage ./hugin-panorama {};

 humanoid-localization = self.callPackage ./humanoid-localization {};

 humanoid-msgs = self.callPackage ./humanoid-msgs {};

 humanoid-nav-msgs = self.callPackage ./humanoid-nav-msgs {};

 humanoid-navigation = self.callPackage ./humanoid-navigation {};

 humanoid-planner-2d = self.callPackage ./humanoid-planner-2d {};

 husky-base = self.callPackage ./husky-base {};

 husky-bringup = self.callPackage ./husky-bringup {};

 husky-control = self.callPackage ./husky-control {};

 husky-description = self.callPackage ./husky-description {};

 husky-desktop = self.callPackage ./husky-desktop {};

 husky-gazebo = self.callPackage ./husky-gazebo {};

 husky-msgs = self.callPackage ./husky-msgs {};

 husky-navigation = self.callPackage ./husky-navigation {};

 husky-robot = self.callPackage ./husky-robot {};

 husky-simulator = self.callPackage ./husky-simulator {};

 husky-viz = self.callPackage ./husky-viz {};

 ibeo-core = self.callPackage ./ibeo-core {};

 ibeo-lux = self.callPackage ./ibeo-lux {};

 ibeo-msgs = self.callPackage ./ibeo-msgs {};

 ieee80211-channels = self.callPackage ./ieee80211-channels {};

 ifm3d = self.callPackage ./ifm3d {};

 ifm-o3mxxx = self.callPackage ./ifm-o3mxxx {};

 igvc-self-drive-description = self.callPackage ./igvc-self-drive-description {};

 igvc-self-drive-gazebo = self.callPackage ./igvc-self-drive-gazebo {};

 igvc-self-drive-gazebo-plugins = self.callPackage ./igvc-self-drive-gazebo-plugins {};

 igvc-self-drive-sim = self.callPackage ./igvc-self-drive-sim {};

 iirob-filters = self.callPackage ./iirob-filters {};

 iiwa-control = self.callPackage ./iiwa-control {};

 iiwa-description = self.callPackage ./iiwa-description {};

 iiwa-gazebo = self.callPackage ./iiwa-gazebo {};

 iiwa-hw = self.callPackage ./iiwa-hw {};

 iiwa-moveit = self.callPackage ./iiwa-moveit {};

 iiwa-msgs = self.callPackage ./iiwa-msgs {};

 iiwa-ros = self.callPackage ./iiwa-ros {};

 image-cb-detector = self.callPackage ./image-cb-detector {};

 image-common = self.callPackage ./image-common {};

 image-exposure-msgs = self.callPackage ./image-exposure-msgs {};

 image-geometry = self.callPackage ./image-geometry {};

 image-overlay-scale-and-compass = self.callPackage ./image-overlay-scale-and-compass {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-recognition = self.callPackage ./image-recognition {};

 image-recognition-msgs = self.callPackage ./image-recognition-msgs {};

 image-recognition-rqt = self.callPackage ./image-recognition-rqt {};

 image-recognition-util = self.callPackage ./image-recognition-util {};

 image-rotate = self.callPackage ./image-rotate {};

 image-stream = self.callPackage ./image-stream {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 image-view2 = self.callPackage ./image-view2 {};

 imagesift = self.callPackage ./imagesift {};

 imagezero = self.callPackage ./imagezero {};

 imagezero-image-transport = self.callPackage ./imagezero-image-transport {};

 imagezero-ros = self.callPackage ./imagezero-ros {};

 imu-compass = self.callPackage ./imu-compass {};

 imu-complementary-filter = self.callPackage ./imu-complementary-filter {};

 imu-filter-madgwick = self.callPackage ./imu-filter-madgwick {};

 imu-monitor = self.callPackage ./imu-monitor {};

 imu-pipeline = self.callPackage ./imu-pipeline {};

 imu-processors = self.callPackage ./imu-processors {};

 imu-sensor-controller = self.callPackage ./imu-sensor-controller {};

 imu-tools = self.callPackage ./imu-tools {};

 imu-transformer = self.callPackage ./imu-transformer {};

 indoor-localization = self.callPackage ./indoor-localization {};

 indoor-positioning = self.callPackage ./indoor-positioning {};

 industrial-core = self.callPackage ./industrial-core {};

 industrial-deprecated = self.callPackage ./industrial-deprecated {};

 industrial-msgs = self.callPackage ./industrial-msgs {};

 industrial-robot-client = self.callPackage ./industrial-robot-client {};

 industrial-robot-simulator = self.callPackage ./industrial-robot-simulator {};

 industrial-robot-status-controller = self.callPackage ./industrial-robot-status-controller {};

 industrial-robot-status-interface = self.callPackage ./industrial-robot-status-interface {};

 industrial-trajectory-filters = self.callPackage ./industrial-trajectory-filters {};

 industrial-utils = self.callPackage ./industrial-utils {};

 innok-heros-driver = self.callPackage ./innok-heros-driver {};

 interactive-marker-proxy = self.callPackage ./interactive-marker-proxy {};

 interactive-marker-tutorials = self.callPackage ./interactive-marker-tutorials {};

 interactive-marker-twist-server = self.callPackage ./interactive-marker-twist-server {};

 interactive-markers = self.callPackage ./interactive-markers {};

 interval-intersection = self.callPackage ./interval-intersection {};

 iot-bridge = self.callPackage ./iot-bridge {};

 ipa-3d-fov-visualization = self.callPackage ./ipa-3d-fov-visualization {};

 ipcamera-driver = self.callPackage ./ipcamera-driver {};

 ipr-extern = self.callPackage ./ipr-extern {};

 ira-laser-tools = self.callPackage ./ira-laser-tools {};

 ivcon = self.callPackage ./ivcon {};

 ixblue-ins = self.callPackage ./ixblue-ins {};

 ixblue-ins-driver = self.callPackage ./ixblue-ins-driver {};

 ixblue-ins-msgs = self.callPackage ./ixblue-ins-msgs {};

 ixblue-stdbin-decoder = self.callPackage ./ixblue-stdbin-decoder {};

 jackal-control = self.callPackage ./jackal-control {};

 jackal-description = self.callPackage ./jackal-description {};

 jackal-desktop = self.callPackage ./jackal-desktop {};

 jackal-gazebo = self.callPackage ./jackal-gazebo {};

 jackal-msgs = self.callPackage ./jackal-msgs {};

 jackal-navigation = self.callPackage ./jackal-navigation {};

 jackal-simulator = self.callPackage ./jackal-simulator {};

 jackal-tutorials = self.callPackage ./jackal-tutorials {};

 jackal-viz = self.callPackage ./jackal-viz {};

 jaguar-control = self.callPackage ./jaguar-control {};

 jaguar-description = self.callPackage ./jaguar-description {};

 jaguar-msgs = self.callPackage ./jaguar-msgs {};

 jaguar-navigation = self.callPackage ./jaguar-navigation {};

 jderobot-assets = self.callPackage ./jderobot-assets {};

 jog-arm = self.callPackage ./jog-arm {};

 jog-control = self.callPackage ./jog-control {};

 jog-controller = self.callPackage ./jog-controller {};

 jog-launch = self.callPackage ./jog-launch {};

 jog-msgs = self.callPackage ./jog-msgs {};

 joint-limits-interface = self.callPackage ./joint-limits-interface {};

 joint-qualification-controllers = self.callPackage ./joint-qualification-controllers {};

 joint-state-controller = self.callPackage ./joint-state-controller {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-state-publisher-gui = self.callPackage ./joint-state-publisher-gui {};

 joint-states-settler = self.callPackage ./joint-states-settler {};

 joint-trajectory-action = self.callPackage ./joint-trajectory-action {};

 joint-trajectory-action-tools = self.callPackage ./joint-trajectory-action-tools {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joint-trajectory-generator = self.callPackage ./joint-trajectory-generator {};

 jointstick = self.callPackage ./jointstick {};

 joy = self.callPackage ./joy {};

 joy-listener = self.callPackage ./joy-listener {};

 joy-mouse = self.callPackage ./joy-mouse {};

 joy-teleop = self.callPackage ./joy-teleop {};

 joystick-drivers = self.callPackage ./joystick-drivers {};

 joystick-interrupt = self.callPackage ./joystick-interrupt {};

 jpeg-streamer = self.callPackage ./jpeg-streamer {};

 jsk-3rdparty = self.callPackage ./jsk-3rdparty {};

 jsk-calibration = self.callPackage ./jsk-calibration {};

 jsk-common = self.callPackage ./jsk-common {};

 jsk-common-msgs = self.callPackage ./jsk-common-msgs {};

 jsk-control = self.callPackage ./jsk-control {};

 jsk-footstep-controller = self.callPackage ./jsk-footstep-controller {};

 jsk-footstep-msgs = self.callPackage ./jsk-footstep-msgs {};

 jsk-footstep-planner = self.callPackage ./jsk-footstep-planner {};

 jsk-gui-msgs = self.callPackage ./jsk-gui-msgs {};

 jsk-hark-msgs = self.callPackage ./jsk-hark-msgs {};

 jsk-ik-server = self.callPackage ./jsk-ik-server {};

 jsk-interactive = self.callPackage ./jsk-interactive {};

 jsk-interactive-marker = self.callPackage ./jsk-interactive-marker {};

 jsk-interactive-test = self.callPackage ./jsk-interactive-test {};

 jsk-model-tools = self.callPackage ./jsk-model-tools {};

 jsk-network-tools = self.callPackage ./jsk-network-tools {};

 jsk-pcl-ros = self.callPackage ./jsk-pcl-ros {};

 jsk-pcl-ros-utils = self.callPackage ./jsk-pcl-ros-utils {};

 jsk-planning = self.callPackage ./jsk-planning {};

 jsk-pr2eus = self.callPackage ./jsk-pr2eus {};

 jsk-recognition = self.callPackage ./jsk-recognition {};

 jsk-recognition-msgs = self.callPackage ./jsk-recognition-msgs {};

 jsk-recognition-utils = self.callPackage ./jsk-recognition-utils {};

 jsk-roseus = self.callPackage ./jsk-roseus {};

 jsk-rqt-plugins = self.callPackage ./jsk-rqt-plugins {};

 jsk-rviz-plugins = self.callPackage ./jsk-rviz-plugins {};

 jsk-teleop-joy = self.callPackage ./jsk-teleop-joy {};

 jsk-tilt-laser = self.callPackage ./jsk-tilt-laser {};

 jsk-topic-tools = self.callPackage ./jsk-topic-tools {};

 jsk-visualization = self.callPackage ./jsk-visualization {};

 jskeus = self.callPackage ./jskeus {};

 json-msgs = self.callPackage ./json-msgs {};

 json-transport = self.callPackage ./json-transport {};

 julius = self.callPackage ./julius {};

 kalman-filter = self.callPackage ./kalman-filter {};

 kartech-linear-actuator-msgs = self.callPackage ./kartech-linear-actuator-msgs {};

 katana = self.callPackage ./katana {};

 katana-arm-gazebo = self.callPackage ./katana-arm-gazebo {};

 katana-description = self.callPackage ./katana-description {};

 katana-driver = self.callPackage ./katana-driver {};

 katana-gazebo-plugins = self.callPackage ./katana-gazebo-plugins {};

 katana-moveit-ikfast-plugin = self.callPackage ./katana-moveit-ikfast-plugin {};

 katana-msgs = self.callPackage ./katana-msgs {};

 katana-teleop = self.callPackage ./katana-teleop {};

 katana-tutorials = self.callPackage ./katana-tutorials {};

 kdl-conversions = self.callPackage ./kdl-conversions {};

 kdl-parser = self.callPackage ./kdl-parser {};

 kdl-parser-py = self.callPackage ./kdl-parser-py {};

 kdl-typekit = self.callPackage ./kdl-typekit {};

 key-teleop = self.callPackage ./key-teleop {};

 khi-duaro-description = self.callPackage ./khi-duaro-description {};

 khi-duaro-gazebo = self.callPackage ./khi-duaro-gazebo {};

 khi-duaro-ikfast-plugin = self.callPackage ./khi-duaro-ikfast-plugin {};

 khi-duaro-moveit-config = self.callPackage ./khi-duaro-moveit-config {};

 khi-robot = self.callPackage ./khi-robot {};

 khi-robot-bringup = self.callPackage ./khi-robot-bringup {};

 khi-robot-control = self.callPackage ./khi-robot-control {};

 khi-robot-msgs = self.callPackage ./khi-robot-msgs {};

 khi-rs007l-moveit-config = self.callPackage ./khi-rs007l-moveit-config {};

 khi-rs007n-moveit-config = self.callPackage ./khi-rs007n-moveit-config {};

 khi-rs080n-moveit-config = self.callPackage ./khi-rs080n-moveit-config {};

 khi-rs-description = self.callPackage ./khi-rs-description {};

 khi-rs-gazebo = self.callPackage ./khi-rs-gazebo {};

 khi-rs-ikfast-plugin = self.callPackage ./khi-rs-ikfast-plugin {};

 kinesis-manager = self.callPackage ./kinesis-manager {};

 kinesis-video-msgs = self.callPackage ./kinesis-video-msgs {};

 kinesis-video-streamer = self.callPackage ./kinesis-video-streamer {};

 kni = self.callPackage ./kni {};

 kobuki = self.callPackage ./kobuki {};

 kobuki-auto-docking = self.callPackage ./kobuki-auto-docking {};

 kobuki-bumper2pc = self.callPackage ./kobuki-bumper2pc {};

 kobuki-capabilities = self.callPackage ./kobuki-capabilities {};

 kobuki-controller-tutorial = self.callPackage ./kobuki-controller-tutorial {};

 kobuki-core = self.callPackage ./kobuki-core {};

 kobuki-dashboard = self.callPackage ./kobuki-dashboard {};

 kobuki-description = self.callPackage ./kobuki-description {};

 kobuki-desktop = self.callPackage ./kobuki-desktop {};

 kobuki-dock-drive = self.callPackage ./kobuki-dock-drive {};

 kobuki-driver = self.callPackage ./kobuki-driver {};

 kobuki-ftdi = self.callPackage ./kobuki-ftdi {};

 kobuki-gazebo = self.callPackage ./kobuki-gazebo {};

 kobuki-gazebo-plugins = self.callPackage ./kobuki-gazebo-plugins {};

 kobuki-keyop = self.callPackage ./kobuki-keyop {};

 kobuki-msgs = self.callPackage ./kobuki-msgs {};

 kobuki-node = self.callPackage ./kobuki-node {};

 kobuki-random-walker = self.callPackage ./kobuki-random-walker {};

 kobuki-rapps = self.callPackage ./kobuki-rapps {};

 kobuki-rviz-launchers = self.callPackage ./kobuki-rviz-launchers {};

 kobuki-safety-controller = self.callPackage ./kobuki-safety-controller {};

 kobuki-soft = self.callPackage ./kobuki-soft {};

 kobuki-softapps = self.callPackage ./kobuki-softapps {};

 kobuki-softnode = self.callPackage ./kobuki-softnode {};

 kobuki-testsuite = self.callPackage ./kobuki-testsuite {};

 korg-nanokontrol = self.callPackage ./korg-nanokontrol {};

 ksql-airport = self.callPackage ./ksql-airport {};

 kvh = self.callPackage ./kvh {};

 kvh-geo-fog-3d = self.callPackage ./kvh-geo-fog-3d {};

 kvh-geo-fog-3d-driver = self.callPackage ./kvh-geo-fog-3d-driver {};

 kvh-geo-fog-3d-msgs = self.callPackage ./kvh-geo-fog-3d-msgs {};

 kvh-geo-fog-3d-rviz = self.callPackage ./kvh-geo-fog-3d-rviz {};

 laptop-battery-monitor = self.callPackage ./laptop-battery-monitor {};

 laser-assembler = self.callPackage ./laser-assembler {};

 laser-cb-detector = self.callPackage ./laser-cb-detector {};

 laser-filtering = self.callPackage ./laser-filtering {};

 laser-filters = self.callPackage ./laser-filters {};

 laser-filters-jsk-patch = self.callPackage ./laser-filters-jsk-patch {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-joint-processor = self.callPackage ./laser-joint-processor {};

 laser-joint-projector = self.callPackage ./laser-joint-projector {};

 laser-ortho-projector = self.callPackage ./laser-ortho-projector {};

 laser-pipeline = self.callPackage ./laser-pipeline {};

 laser-proc = self.callPackage ./laser-proc {};

 laser-scan-densifier = self.callPackage ./laser-scan-densifier {};

 laser-scan-matcher = self.callPackage ./laser-scan-matcher {};

 laser-scan-publisher-tutorial = self.callPackage ./laser-scan-publisher-tutorial {};

 laser-scan-sparsifier = self.callPackage ./laser-scan-sparsifier {};

 laser-scan-splitter = self.callPackage ./laser-scan-splitter {};

 laser-tilt-controller-filter = self.callPackage ./laser-tilt-controller-filter {};

 launchman = self.callPackage ./launchman {};

 lauv-control = self.callPackage ./lauv-control {};

 lauv-description = self.callPackage ./lauv-description {};

 lauv-gazebo = self.callPackage ./lauv-gazebo {};

 leap-motion = self.callPackage ./leap-motion {};

 leg-detector = self.callPackage ./leg-detector {};

 leo = self.callPackage ./leo {};

 leo-description = self.callPackage ./leo-description {};

 leo-desktop = self.callPackage ./leo-desktop {};

 leo-teleop = self.callPackage ./leo-teleop {};

 leo-viz = self.callPackage ./leo-viz {};

 leuze-bringup = self.callPackage ./leuze-bringup {};

 leuze-description = self.callPackage ./leuze-description {};

 leuze-msgs = self.callPackage ./leuze-msgs {};

 leuze-phidget-driver = self.callPackage ./leuze-phidget-driver {};

 leuze-ros-drivers = self.callPackage ./leuze-ros-drivers {};

 leuze-rsl-driver = self.callPackage ./leuze-rsl-driver {};

 lex-common = self.callPackage ./lex-common {};

 lex-common-msgs = self.callPackage ./lex-common-msgs {};

 lex-node = self.callPackage ./lex-node {};

 lgsvl-msgs = self.callPackage ./lgsvl-msgs {};

 libcmt = self.callPackage ./libcmt {};

 libconcorde-tsp-solver = self.callPackage ./libconcorde-tsp-solver {};

 libcreate = self.callPackage ./libcreate {};

 libdlib = self.callPackage ./libdlib {};

 libfranka = self.callPackage ./libfranka {};

 libfreenect = self.callPackage ./libfreenect {};

 libg2o = self.callPackage ./libg2o {};

 libmavconn = self.callPackage ./libmavconn {};

 libmodbus = self.callPackage ./libmodbus {};

 libmongocxx-ros = self.callPackage ./libmongocxx-ros {};

 libntcan = self.callPackage ./libntcan {};

 libpcan = self.callPackage ./libpcan {};

 libphidget21 = self.callPackage ./libphidget21 {};

 libphidgets = self.callPackage ./libphidgets {};

 libqsopt = self.callPackage ./libqsopt {};

 libqt-concurrent = self.callPackage ./libqt-concurrent {};

 libqt-core = self.callPackage ./libqt-core {};

 libqt-dev = self.callPackage ./libqt-dev {};

 libqt-gui = self.callPackage ./libqt-gui {};

 libqt-network = self.callPackage ./libqt-network {};

 libqt-opengl = self.callPackage ./libqt-opengl {};

 libqt-opengl-dev = self.callPackage ./libqt-opengl-dev {};

 libqt-svg-dev = self.callPackage ./libqt-svg-dev {};

 libqt-widgets = self.callPackage ./libqt-widgets {};

 librealsense = self.callPackage ./librealsense {};

 librealsense2 = self.callPackage ./librealsense2 {};

 libreflexxestype2 = self.callPackage ./libreflexxestype2 {};

 librviz-tutorial = self.callPackage ./librviz-tutorial {};

 libsensors-monitor = self.callPackage ./libsensors-monitor {};

 libsiftfast = self.callPackage ./libsiftfast {};

 libuvc = self.callPackage ./libuvc {};

 libuvc-camera = self.callPackage ./libuvc-camera {};

 libuvc-ros = self.callPackage ./libuvc-ros {};

 linksys-access-point = self.callPackage ./linksys-access-point {};

 linux-networking = self.callPackage ./linux-networking {};

 linux-peripheral-interfaces = self.callPackage ./linux-peripheral-interfaces {};

 lkh = self.callPackage ./lkh {};

 lkh-solver = self.callPackage ./lkh-solver {};

 lms1xx = self.callPackage ./lms1xx {};

 lockfree = self.callPackage ./lockfree {};

 locomotor = self.callPackage ./locomotor {};

 locomotor-msgs = self.callPackage ./locomotor-msgs {};

 locomove-base = self.callPackage ./locomove-base {};

 log4cpp = self.callPackage ./log4cpp {};

 log-view = self.callPackage ./log-view {};

 loki-base-node = self.callPackage ./loki-base-node {};

 loki-bringup = self.callPackage ./loki-bringup {};

 loki-demos = self.callPackage ./loki-demos {};

 loki-description = self.callPackage ./loki-description {};

 loki-nav = self.callPackage ./loki-nav {};

 loki-robot = self.callPackage ./loki-robot {};

 loki-teleop = self.callPackage ./loki-teleop {};

 look-at-pose = self.callPackage ./look-at-pose {};

 lost-comms-recovery = self.callPackage ./lost-comms-recovery {};

 lpg-planner = self.callPackage ./lpg-planner {};

 lusb = self.callPackage ./lusb {};

 lyap-control = self.callPackage ./lyap-control {};

 magni-bringup = self.callPackage ./magni-bringup {};

 magni-demos = self.callPackage ./magni-demos {};

 magni-description = self.callPackage ./magni-description {};

 magni-nav = self.callPackage ./magni-nav {};

 magni-robot = self.callPackage ./magni-robot {};

 magni-teleop = self.callPackage ./magni-teleop {};

 magni-viz = self.callPackage ./magni-viz {};

 manipulation-msgs = self.callPackage ./manipulation-msgs {};

 manipulator-h = self.callPackage ./manipulator-h {};

 manipulator-h-base-module = self.callPackage ./manipulator-h-base-module {};

 manipulator-h-base-module-msgs = self.callPackage ./manipulator-h-base-module-msgs {};

 manipulator-h-bringup = self.callPackage ./manipulator-h-bringup {};

 manipulator-h-description = self.callPackage ./manipulator-h-description {};

 manipulator-h-gazebo = self.callPackage ./manipulator-h-gazebo {};

 manipulator-h-gui = self.callPackage ./manipulator-h-gui {};

 manipulator-h-kinematics-dynamics = self.callPackage ./manipulator-h-kinematics-dynamics {};

 manipulator-h-manager = self.callPackage ./manipulator-h-manager {};

 map-laser = self.callPackage ./map-laser {};

 map-msgs = self.callPackage ./map-msgs {};

 map-organizer = self.callPackage ./map-organizer {};

 map-organizer-msgs = self.callPackage ./map-organizer-msgs {};

 map-server = self.callPackage ./map-server {};

 mapviz = self.callPackage ./mapviz {};

 mapviz-plugins = self.callPackage ./mapviz-plugins {};

 marker-msgs = self.callPackage ./marker-msgs {};

 marker-rviz-plugin = self.callPackage ./marker-rviz-plugin {};

 marshmallow = self.callPackage ./marshmallow {};

 marti-can-msgs = self.callPackage ./marti-can-msgs {};

 marti-common-msgs = self.callPackage ./marti-common-msgs {};

 marti-data-structures = self.callPackage ./marti-data-structures {};

 marti-dbw-msgs = self.callPackage ./marti-dbw-msgs {};

 marti-nav-msgs = self.callPackage ./marti-nav-msgs {};

 marti-perception-msgs = self.callPackage ./marti-perception-msgs {};

 marti-sensor-msgs = self.callPackage ./marti-sensor-msgs {};

 marti-status-msgs = self.callPackage ./marti-status-msgs {};

 marti-visualization-msgs = self.callPackage ./marti-visualization-msgs {};

 marvelmind-nav = self.callPackage ./marvelmind-nav {};

 master-discovery-fkie = self.callPackage ./master-discovery-fkie {};

 master-sync-fkie = self.callPackage ./master-sync-fkie {};

 mav-comm = self.callPackage ./mav-comm {};

 mav-msgs = self.callPackage ./mav-msgs {};

 mav-planning-msgs = self.callPackage ./mav-planning-msgs {};

 mavlink = self.callPackage ./mavlink {};

 mavros = self.callPackage ./mavros {};

 mavros-extras = self.callPackage ./mavros-extras {};

 mavros-msgs = self.callPackage ./mavros-msgs {};

 mbf-abstract-core = self.callPackage ./mbf-abstract-core {};

 mbf-abstract-nav = self.callPackage ./mbf-abstract-nav {};

 mbf-costmap-core = self.callPackage ./mbf-costmap-core {};

 mbf-costmap-nav = self.callPackage ./mbf-costmap-nav {};

 mbf-msgs = self.callPackage ./mbf-msgs {};

 mbf-simple-nav = self.callPackage ./mbf-simple-nav {};

 mbf-utility = self.callPackage ./mbf-utility {};

 mcl-3dl = self.callPackage ./mcl-3dl {};

 mcl-3dl-msgs = self.callPackage ./mcl-3dl-msgs {};

 mcmillan-airfield = self.callPackage ./mcmillan-airfield {};

 md49-base-controller = self.callPackage ./md49-base-controller {};

 md49-messages = self.callPackage ./md49-messages {};

 md49-serialport = self.callPackage ./md49-serialport {};

 mecanum-gazebo-plugin = self.callPackage ./mecanum-gazebo-plugin {};

 media-export = self.callPackage ./media-export {};

 melfa-description = self.callPackage ./melfa-description {};

 melfa-driver = self.callPackage ./melfa-driver {};

 melfa-robot = self.callPackage ./melfa-robot {};

 message-filters = self.callPackage ./message-filters {};

 message-generation = self.callPackage ./message-generation {};

 message-multiplexing = self.callPackage ./message-multiplexing {};

 message-relay = self.callPackage ./message-relay {};

 message-runtime = self.callPackage ./message-runtime {};

 message-to-tf = self.callPackage ./message-to-tf {};

 microstrain-3dmgx2-imu = self.callPackage ./microstrain-3dmgx2-imu {};

 microstrain-mips = self.callPackage ./microstrain-mips {};

 minas = self.callPackage ./minas {};

 minas-control = self.callPackage ./minas-control {};

 mini-maxwell = self.callPackage ./mini-maxwell {};

 mir-actions = self.callPackage ./mir-actions {};

 mir-description = self.callPackage ./mir-description {};

 mir-driver = self.callPackage ./mir-driver {};

 mir-dwb-critics = self.callPackage ./mir-dwb-critics {};

 mir-gazebo = self.callPackage ./mir-gazebo {};

 mir-msgs = self.callPackage ./mir-msgs {};

 mir-navigation = self.callPackage ./mir-navigation {};

 mir-robot = self.callPackage ./mir-robot {};

 mk = self.callPackage ./mk {};

 ml-classifiers = self.callPackage ./ml-classifiers {};

 mm-core-msgs = self.callPackage ./mm-core-msgs {};

 mm-eigen-msgs = self.callPackage ./mm-eigen-msgs {};

 mm-messages = self.callPackage ./mm-messages {};

 mm-mux-demux = self.callPackage ./mm-mux-demux {};

 mm-radio = self.callPackage ./mm-radio {};

 mobileye-560-660-msgs = self.callPackage ./mobileye-560-660-msgs {};

 modelica-bridge = self.callPackage ./modelica-bridge {};

 mongodb-log = self.callPackage ./mongodb-log {};

 mongodb-store = self.callPackage ./mongodb-store {};

 mongodb-store-msgs = self.callPackage ./mongodb-store-msgs {};

 monocam-settler = self.callPackage ./monocam-settler {};

 moose-control = self.callPackage ./moose-control {};

 moose-description = self.callPackage ./moose-description {};

 moose-desktop = self.callPackage ./moose-desktop {};

 moose-gazebo = self.callPackage ./moose-gazebo {};

 moose-msgs = self.callPackage ./moose-msgs {};

 moose-simulator = self.callPackage ./moose-simulator {};

 moose-viz = self.callPackage ./moose-viz {};

 motion-module-tutorial = self.callPackage ./motion-module-tutorial {};

 mouse-teleop = self.callPackage ./mouse-teleop {};

 move-base = self.callPackage ./move-base {};

 move-base-flex = self.callPackage ./move-base-flex {};

 move-base-msgs = self.callPackage ./move-base-msgs {};

 move-base-to-manip = self.callPackage ./move-base-to-manip {};

 move-basic = self.callPackage ./move-basic {};

 move-slow-and-clear = self.callPackage ./move-slow-and-clear {};

 moveit = self.callPackage ./moveit {};

 moveit-chomp-optimizer-adapter = self.callPackage ./moveit-chomp-optimizer-adapter {};

 moveit-config-m0609 = self.callPackage ./moveit-config-m0609 {};

 moveit-config-m0617 = self.callPackage ./moveit-config-m0617 {};

 moveit-config-m1013 = self.callPackage ./moveit-config-m1013 {};

 moveit-config-m1509 = self.callPackage ./moveit-config-m1509 {};

 moveit-controller-manager-example = self.callPackage ./moveit-controller-manager-example {};

 moveit-experimental = self.callPackage ./moveit-experimental {};

 moveit-fake-controller-manager = self.callPackage ./moveit-fake-controller-manager {};

 moveit-kinematics = self.callPackage ./moveit-kinematics {};

 moveit-msgs = self.callPackage ./moveit-msgs {};

 moveit-opw-kinematics-plugin = self.callPackage ./moveit-opw-kinematics-plugin {};

 moveit-planners = self.callPackage ./moveit-planners {};

 moveit-planners-chomp = self.callPackage ./moveit-planners-chomp {};

 moveit-planners-ompl = self.callPackage ./moveit-planners-ompl {};

 moveit-plugins = self.callPackage ./moveit-plugins {};

 moveit-pr2 = self.callPackage ./moveit-pr2 {};

 moveit-resources = self.callPackage ./moveit-resources {};

 moveit-ros = self.callPackage ./moveit-ros {};

 moveit-ros-benchmarks = self.callPackage ./moveit-ros-benchmarks {};

 moveit-ros-control-interface = self.callPackage ./moveit-ros-control-interface {};

 moveit-ros-manipulation = self.callPackage ./moveit-ros-manipulation {};

 moveit-ros-move-group = self.callPackage ./moveit-ros-move-group {};

 moveit-ros-perception = self.callPackage ./moveit-ros-perception {};

 moveit-ros-planning = self.callPackage ./moveit-ros-planning {};

 moveit-ros-planning-interface = self.callPackage ./moveit-ros-planning-interface {};

 moveit-ros-robot-interaction = self.callPackage ./moveit-ros-robot-interaction {};

 moveit-ros-visualization = self.callPackage ./moveit-ros-visualization {};

 moveit-ros-warehouse = self.callPackage ./moveit-ros-warehouse {};

 moveit-runtime = self.callPackage ./moveit-runtime {};

 moveit-setup-assistant = self.callPackage ./moveit-setup-assistant {};

 moveit-sim-controller = self.callPackage ./moveit-sim-controller {};

 moveit-simple-controller-manager = self.callPackage ./moveit-simple-controller-manager {};

 moveit-visual-tools = self.callPackage ./moveit-visual-tools {};

 movie-publisher = self.callPackage ./movie-publisher {};

 mqtt-bridge = self.callPackage ./mqtt-bridge {};

 mrpt1 = self.callPackage ./mrpt1 {};

 mrpt-bridge = self.callPackage ./mrpt-bridge {};

 mrpt-ekf-slam-2d = self.callPackage ./mrpt-ekf-slam-2d {};

 mrpt-ekf-slam-3d = self.callPackage ./mrpt-ekf-slam-3d {};

 mrpt-graphslam-2d = self.callPackage ./mrpt-graphslam-2d {};

 mrpt-icp-slam-2d = self.callPackage ./mrpt-icp-slam-2d {};

 mrpt-local-obstacles = self.callPackage ./mrpt-local-obstacles {};

 mrpt-localization = self.callPackage ./mrpt-localization {};

 mrpt-map = self.callPackage ./mrpt-map {};

 mrpt-msgs = self.callPackage ./mrpt-msgs {};

 mrpt-navigation = self.callPackage ./mrpt-navigation {};

 mrpt-rawlog = self.callPackage ./mrpt-rawlog {};

 mrpt-rbpf-slam = self.callPackage ./mrpt-rbpf-slam {};

 mrpt-reactivenav2d = self.callPackage ./mrpt-reactivenav2d {};

 mrpt-slam = self.callPackage ./mrpt-slam {};

 mrpt-tutorials = self.callPackage ./mrpt-tutorials {};

 msp = self.callPackage ./msp {};

 multi-interface-roam = self.callPackage ./multi-interface-roam {};

 multi-map-server = self.callPackage ./multi-map-server {};

 multi-object-tracking-lidar = self.callPackage ./multi-object-tracking-lidar {};

 multikey-teleop = self.callPackage ./multikey-teleop {};

 multimaster-fkie = self.callPackage ./multimaster-fkie {};

 multimaster-launch = self.callPackage ./multimaster-launch {};

 multimaster-msgs = self.callPackage ./multimaster-msgs {};

 multimaster-msgs-fkie = self.callPackage ./multimaster-msgs-fkie {};

 multires-image = self.callPackage ./multires-image {};

 multirobot-map-merge = self.callPackage ./multirobot-map-merge {};

 multisense = self.callPackage ./multisense {};

 multisense-bringup = self.callPackage ./multisense-bringup {};

 multisense-cal-check = self.callPackage ./multisense-cal-check {};

 multisense-description = self.callPackage ./multisense-description {};

 multisense-lib = self.callPackage ./multisense-lib {};

 multisense-ros = self.callPackage ./multisense-ros {};

 multiwii = self.callPackage ./multiwii {};

 mvsim = self.callPackage ./mvsim {};

 myahrs-driver = self.callPackage ./myahrs-driver {};

 mynt-eye-ros-wrapper = self.callPackage ./mynt-eye-ros-wrapper {};

 nanomsg = self.callPackage ./nanomsg {};

 nao-apps = self.callPackage ./nao-apps {};

 nao-audio = self.callPackage ./nao-audio {};

 nao-bringup = self.callPackage ./nao-bringup {};

 nao-control = self.callPackage ./nao-control {};

 nao-dcm-bringup = self.callPackage ./nao-dcm-bringup {};

 nao-description = self.callPackage ./nao-description {};

 nao-interaction = self.callPackage ./nao-interaction {};

 nao-interaction-launchers = self.callPackage ./nao-interaction-launchers {};

 nao-interaction-msgs = self.callPackage ./nao-interaction-msgs {};

 nao-meshes = self.callPackage ./nao-meshes {};

 nao-moveit-config = self.callPackage ./nao-moveit-config {};

 nao-robot = self.callPackage ./nao-robot {};

 nao-vision = self.callPackage ./nao-vision {};

 naoqi-apps = self.callPackage ./naoqi-apps {};

 naoqi-bridge = self.callPackage ./naoqi-bridge {};

 naoqi-bridge-msgs = self.callPackage ./naoqi-bridge-msgs {};

 naoqi-dcm-driver = self.callPackage ./naoqi-dcm-driver {};

 naoqi-driver = self.callPackage ./naoqi-driver {};

 naoqi-driver-py = self.callPackage ./naoqi-driver-py {};

 naoqi-libqi = self.callPackage ./naoqi-libqi {};

 naoqi-libqicore = self.callPackage ./naoqi-libqicore {};

 naoqi-pose = self.callPackage ./naoqi-pose {};

 naoqi-sensors-py = self.callPackage ./naoqi-sensors-py {};

 naoqi-tools = self.callPackage ./naoqi-tools {};

 nav2d = self.callPackage ./nav2d {};

 nav2d-exploration = self.callPackage ./nav2d-exploration {};

 nav2d-karto = self.callPackage ./nav2d-karto {};

 nav2d-localizer = self.callPackage ./nav2d-localizer {};

 nav2d-msgs = self.callPackage ./nav2d-msgs {};

 nav2d-navigator = self.callPackage ./nav2d-navigator {};

 nav2d-operator = self.callPackage ./nav2d-operator {};

 nav2d-remote = self.callPackage ./nav2d-remote {};

 nav2d-tutorials = self.callPackage ./nav2d-tutorials {};

 nav-2d-msgs = self.callPackage ./nav-2d-msgs {};

 nav-2d-utils = self.callPackage ./nav-2d-utils {};

 nav-core = self.callPackage ./nav-core {};

 nav-core2 = self.callPackage ./nav-core2 {};

 nav-core-adapter = self.callPackage ./nav-core-adapter {};

 nav-grid = self.callPackage ./nav-grid {};

 nav-grid-iterators = self.callPackage ./nav-grid-iterators {};

 nav-grid-pub-sub = self.callPackage ./nav-grid-pub-sub {};

 nav-grid-server = self.callPackage ./nav-grid-server {};

 nav-msgs = self.callPackage ./nav-msgs {};

 nav-pcontroller = self.callPackage ./nav-pcontroller {};

 navfn = self.callPackage ./navfn {};

 navigation = self.callPackage ./navigation {};

 navigation-experimental = self.callPackage ./navigation-experimental {};

 navigation-layers = self.callPackage ./navigation-layers {};

 navigation-stage = self.callPackage ./navigation-stage {};

 navigation-tutorials = self.callPackage ./navigation-tutorials {};

 ncd-parser = self.callPackage ./ncd-parser {};

 neobotix-usboard-msgs = self.callPackage ./neobotix-usboard-msgs {};

 neonavigation = self.callPackage ./neonavigation {};

 neonavigation-common = self.callPackage ./neonavigation-common {};

 neonavigation-launch = self.callPackage ./neonavigation-launch {};

 neonavigation-msgs = self.callPackage ./neonavigation-msgs {};

 neonavigation-rviz-plugins = self.callPackage ./neonavigation-rviz-plugins {};

 nerian-sp1 = self.callPackage ./nerian-sp1 {};

 nerian-stereo = self.callPackage ./nerian-stereo {};

 network-autoconfig = self.callPackage ./network-autoconfig {};

 network-control-tests = self.callPackage ./network-control-tests {};

 network-detector = self.callPackage ./network-detector {};

 network-interface = self.callPackage ./network-interface {};

 network-monitor-udp = self.callPackage ./network-monitor-udp {};

 network-traffic-control = self.callPackage ./network-traffic-control {};

 nextage-calibration = self.callPackage ./nextage-calibration {};

 nextage-description = self.callPackage ./nextage-description {};

 nextage-gazebo = self.callPackage ./nextage-gazebo {};

 nextage-ik-plugin = self.callPackage ./nextage-ik-plugin {};

 nextage-moveit-config = self.callPackage ./nextage-moveit-config {};

 nextage-ros-bridge = self.callPackage ./nextage-ros-bridge {};

 nlopt = self.callPackage ./nlopt {};

 nmea-comms = self.callPackage ./nmea-comms {};

 nmea-gps-plugin = self.callPackage ./nmea-gps-plugin {};

 nmea-msgs = self.callPackage ./nmea-msgs {};

 nmea-navsat-driver = self.callPackage ./nmea-navsat-driver {};

 node-manager-fkie = self.callPackage ./node-manager-fkie {};

 nodelet = self.callPackage ./nodelet {};

 nodelet-core = self.callPackage ./nodelet-core {};

 nodelet-topic-tools = self.callPackage ./nodelet-topic-tools {};

 nodelet-tutorial-math = self.callPackage ./nodelet-tutorial-math {};

 nonpersistent-voxel-layer = self.callPackage ./nonpersistent-voxel-layer {};

 novatel-gps-driver = self.callPackage ./novatel-gps-driver {};

 novatel-gps-msgs = self.callPackage ./novatel-gps-msgs {};

 novatel-msgs = self.callPackage ./novatel-msgs {};

 novatel-oem7-driver = self.callPackage ./novatel-oem7-driver {};

 novatel-oem7-msgs = self.callPackage ./novatel-oem7-msgs {};

 ntpd-driver = self.callPackage ./ntpd-driver {};

 o3m151-driver = self.callPackage ./o3m151-driver {};

 obj-to-pointcloud = self.callPackage ./obj-to-pointcloud {};

 object-recognition-capture = self.callPackage ./object-recognition-capture {};

 object-recognition-core = self.callPackage ./object-recognition-core {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 object-recognition-reconstruction = self.callPackage ./object-recognition-reconstruction {};

 object-recognition-ros = self.callPackage ./object-recognition-ros {};

 object-recognition-ros-visualization = self.callPackage ./object-recognition-ros-visualization {};

 object-recognition-tod = self.callPackage ./object-recognition-tod {};

 object-recognition-transparent-objects = self.callPackage ./object-recognition-transparent-objects {};

 ocean-battery-driver = self.callPackage ./ocean-battery-driver {};

 ocl = self.callPackage ./ocl {};

 octomap = self.callPackage ./octomap {};

 octomap-mapping = self.callPackage ./octomap-mapping {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octomap-pa = self.callPackage ./octomap-pa {};

 octomap-ros = self.callPackage ./octomap-ros {};

 octomap-rviz-plugins = self.callPackage ./octomap-rviz-plugins {};

 octomap-server = self.callPackage ./octomap-server {};

 oculusprime = self.callPackage ./oculusprime {};

 odom-frame-publisher = self.callPackage ./odom-frame-publisher {};

 odometry-publisher-tutorial = self.callPackage ./odometry-publisher-tutorial {};

 odva-ethernetip = self.callPackage ./odva-ethernetip {};

 oled-display-node = self.callPackage ./oled-display-node {};

 ompl = self.callPackage ./ompl {};

 omron-os32c-driver = self.callPackage ./omron-os32c-driver {};

 op3-action-editor = self.callPackage ./op3-action-editor {};

 op3-action-module = self.callPackage ./op3-action-module {};

 op3-action-module-msgs = self.callPackage ./op3-action-module-msgs {};

 op3-balance-control = self.callPackage ./op3-balance-control {};

 op3-ball-detector = self.callPackage ./op3-ball-detector {};

 op3-base-module = self.callPackage ./op3-base-module {};

 op3-bringup = self.callPackage ./op3-bringup {};

 op3-camera-setting-tool = self.callPackage ./op3-camera-setting-tool {};

 op3-demo = self.callPackage ./op3-demo {};

 op3-description = self.callPackage ./op3-description {};

 op3-direct-control-module = self.callPackage ./op3-direct-control-module {};

 op3-gazebo = self.callPackage ./op3-gazebo {};

 op3-gui-demo = self.callPackage ./op3-gui-demo {};

 op3-head-control-module = self.callPackage ./op3-head-control-module {};

 op3-kinematics-dynamics = self.callPackage ./op3-kinematics-dynamics {};

 op3-localization = self.callPackage ./op3-localization {};

 op3-manager = self.callPackage ./op3-manager {};

 op3-navigation = self.callPackage ./op3-navigation {};

 op3-offset-tuner-client = self.callPackage ./op3-offset-tuner-client {};

 op3-offset-tuner-msgs = self.callPackage ./op3-offset-tuner-msgs {};

 op3-offset-tuner-server = self.callPackage ./op3-offset-tuner-server {};

 op3-online-walking-module = self.callPackage ./op3-online-walking-module {};

 op3-online-walking-module-msgs = self.callPackage ./op3-online-walking-module-msgs {};

 op3-walking-module = self.callPackage ./op3-walking-module {};

 op3-walking-module-msgs = self.callPackage ./op3-walking-module-msgs {};

 op3-web-setting-tool = self.callPackage ./op3-web-setting-tool {};

 open-cr-module = self.callPackage ./open-cr-module {};

 open-karto = self.callPackage ./open-karto {};

 open-manipulator = self.callPackage ./open-manipulator {};

 open-manipulator-ar-markers = self.callPackage ./open-manipulator-ar-markers {};

 open-manipulator-control-gui = self.callPackage ./open-manipulator-control-gui {};

 open-manipulator-controller = self.callPackage ./open-manipulator-controller {};

 open-manipulator-description = self.callPackage ./open-manipulator-description {};

 open-manipulator-gazebo = self.callPackage ./open-manipulator-gazebo {};

 open-manipulator-libs = self.callPackage ./open-manipulator-libs {};

 open-manipulator-moveit = self.callPackage ./open-manipulator-moveit {};

 open-manipulator-msgs = self.callPackage ./open-manipulator-msgs {};

 open-manipulator-p = self.callPackage ./open-manipulator-p {};

 open-manipulator-p-control-gui = self.callPackage ./open-manipulator-p-control-gui {};

 open-manipulator-p-controller = self.callPackage ./open-manipulator-p-controller {};

 open-manipulator-p-description = self.callPackage ./open-manipulator-p-description {};

 open-manipulator-p-gazebo = self.callPackage ./open-manipulator-p-gazebo {};

 open-manipulator-p-libs = self.callPackage ./open-manipulator-p-libs {};

 open-manipulator-p-simulations = self.callPackage ./open-manipulator-p-simulations {};

 open-manipulator-p-teleop = self.callPackage ./open-manipulator-p-teleop {};

 open-manipulator-perceptions = self.callPackage ./open-manipulator-perceptions {};

 open-manipulator-simulations = self.callPackage ./open-manipulator-simulations {};

 open-manipulator-teleop = self.callPackage ./open-manipulator-teleop {};

 open-manipulator-with-tb3 = self.callPackage ./open-manipulator-with-tb3 {};

 open-manipulator-with-tb3-description = self.callPackage ./open-manipulator-with-tb3-description {};

 open-manipulator-with-tb3-gazebo = self.callPackage ./open-manipulator-with-tb3-gazebo {};

 open-manipulator-with-tb3-simulations = self.callPackage ./open-manipulator-with-tb3-simulations {};

 open-manipulator-with-tb3-tools = self.callPackage ./open-manipulator-with-tb3-tools {};

 open-manipulator-with-tb3-waffle-moveit = self.callPackage ./open-manipulator-with-tb3-waffle-moveit {};

 open-manipulator-with-tb3-waffle-pi-moveit = self.callPackage ./open-manipulator-with-tb3-waffle-pi-moveit {};

 opencv3 = self.callPackage ./opencv3 {};

 opencv-apps = self.callPackage ./opencv-apps {};

 opencv-candidate = self.callPackage ./opencv-candidate {};

 openface-ros = self.callPackage ./openface-ros {};

 opengm = self.callPackage ./opengm {};

 openni2-camera = self.callPackage ./openni2-camera {};

 openni2-launch = self.callPackage ./openni2-launch {};

 openni-description = self.callPackage ./openni-description {};

 openni-launch = self.callPackage ./openni-launch {};

 openrave-planning = self.callPackage ./openrave-planning {};

 openrtm-aist = self.callPackage ./openrtm-aist {};

 openrtm-ros-bridge = self.callPackage ./openrtm-ros-bridge {};

 openrtm-tools = self.callPackage ./openrtm-tools {};

 openslam-gmapping = self.callPackage ./openslam-gmapping {};

 opt-camera = self.callPackage ./opt-camera {};

 optpp-catkin = self.callPackage ./optpp-catkin {};

 orocos-kdl = self.callPackage ./orocos-kdl {};

 orocos-kinematics-dynamics = self.callPackage ./orocos-kinematics-dynamics {};

 oros-tools = self.callPackage ./oros-tools {};

 oros-tools-examples = self.callPackage ./oros-tools-examples {};

 osg-interactive-markers = self.callPackage ./osg-interactive-markers {};

 osg-markers = self.callPackage ./osg-markers {};

 osg-utils = self.callPackage ./osg-utils {};

 osm-cartography = self.callPackage ./osm-cartography {};

 ouster-driver = self.callPackage ./ouster-driver {};

 oxford-gps-eth = self.callPackage ./oxford-gps-eth {};

 p2os-doc = self.callPackage ./p2os-doc {};

 p2os-driver = self.callPackage ./p2os-driver {};

 p2os-launch = self.callPackage ./p2os-launch {};

 p2os-msgs = self.callPackage ./p2os-msgs {};

 p2os-teleop = self.callPackage ./p2os-teleop {};

 p2os-urdf = self.callPackage ./p2os-urdf {};

 pacmod = self.callPackage ./pacmod {};

 pacmod3 = self.callPackage ./pacmod3 {};

 pacmod-game-control = self.callPackage ./pacmod-game-control {};

 pacmod-msgs = self.callPackage ./pacmod-msgs {};

 pal-hardware-interfaces = self.callPackage ./pal-hardware-interfaces {};

 panda-moveit-config = self.callPackage ./panda-moveit-config {};

 parameter-pa = self.callPackage ./parameter-pa {};

 parrot-arsdk = self.callPackage ./parrot-arsdk {};

 pcdfilter-pa = self.callPackage ./pcdfilter-pa {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 pddl-msgs = self.callPackage ./pddl-msgs {};

 pddl-planner = self.callPackage ./pddl-planner {};

 pddl-planner-viewer = self.callPackage ./pddl-planner-viewer {};

 people = self.callPackage ./people {};

 people-msgs = self.callPackage ./people-msgs {};

 people-tracking-filter = self.callPackage ./people-tracking-filter {};

 people-velocity-tracker = self.callPackage ./people-velocity-tracker {};

 pepper-bringup = self.callPackage ./pepper-bringup {};

 pepper-control = self.callPackage ./pepper-control {};

 pepper-dcm-bringup = self.callPackage ./pepper-dcm-bringup {};

 pepper-description = self.callPackage ./pepper-description {};

 pepper-gazebo-plugin = self.callPackage ./pepper-gazebo-plugin {};

 pepper-meshes = self.callPackage ./pepper-meshes {};

 pepper-moveit-config = self.callPackage ./pepper-moveit-config {};

 pepper-robot = self.callPackage ./pepper-robot {};

 pepper-sensors-py = self.callPackage ./pepper-sensors-py {};

 pepperl-fuchs-r2000 = self.callPackage ./pepperl-fuchs-r2000 {};

 perception = self.callPackage ./perception {};

 perception-pcl = self.callPackage ./perception-pcl {};

 pgm-learner = self.callPackage ./pgm-learner {};

 pheeno-ros = self.callPackage ./pheeno-ros {};

 pheeno-ros-description = self.callPackage ./pheeno-ros-description {};

 pheeno-ros-sim = self.callPackage ./pheeno-ros-sim {};

 phidgets-api = self.callPackage ./phidgets-api {};

 phidgets-drivers = self.callPackage ./phidgets-drivers {};

 phidgets-high-speed-encoder = self.callPackage ./phidgets-high-speed-encoder {};

 phidgets-ik = self.callPackage ./phidgets-ik {};

 phidgets-imu = self.callPackage ./phidgets-imu {};

 phidgets-msgs = self.callPackage ./phidgets-msgs {};

 phm-hazard-rate-calculation = self.callPackage ./phm-hazard-rate-calculation {};

 phm-msgs = self.callPackage ./phm-msgs {};

 phm-reliability-calculation = self.callPackage ./phm-reliability-calculation {};

 phm-robot-task-completion = self.callPackage ./phm-robot-task-completion {};

 phm-start = self.callPackage ./phm-start {};

 phm-tools = self.callPackage ./phm-tools {};

 pid = self.callPackage ./pid {};

 piksi-multi-rtk = self.callPackage ./piksi-multi-rtk {};

 piksi-rtk-msgs = self.callPackage ./piksi-rtk-msgs {};

 pilz-control = self.callPackage ./pilz-control {};

 pilz-extensions = self.callPackage ./pilz-extensions {};

 pilz-industrial-motion = self.callPackage ./pilz-industrial-motion {};

 pilz-industrial-motion-testutils = self.callPackage ./pilz-industrial-motion-testutils {};

 pilz-msgs = self.callPackage ./pilz-msgs {};

 pilz-robot-programming = self.callPackage ./pilz-robot-programming {};

 pilz-robots = self.callPackage ./pilz-robots {};

 pilz-status-indicator-rqt = self.callPackage ./pilz-status-indicator-rqt {};

 pilz-testutils = self.callPackage ./pilz-testutils {};

 pilz-trajectory-generation = self.callPackage ./pilz-trajectory-generation {};

 pilz-utils = self.callPackage ./pilz-utils {};

 pinocchio = self.callPackage ./pinocchio {};

 planner-cspace = self.callPackage ./planner-cspace {};

 planner-cspace-msgs = self.callPackage ./planner-cspace-msgs {};

 play-motion = self.callPackage ./play-motion {};

 play-motion-msgs = self.callPackage ./play-motion-msgs {};

 plot-tools = self.callPackage ./plot-tools {};

 plotjuggler = self.callPackage ./plotjuggler {};

 plotjuggler-msgs = self.callPackage ./plotjuggler-msgs {};

 pluginlib = self.callPackage ./pluginlib {};

 pluginlib-tutorials = self.callPackage ./pluginlib-tutorials {};

 point-cloud-publisher-tutorial = self.callPackage ./point-cloud-publisher-tutorial {};

 pointcloud-to-laserscan = self.callPackage ./pointcloud-to-laserscan {};

 pointcloud-tools = self.callPackage ./pointcloud-tools {};

 pointgrey-camera-description = self.callPackage ./pointgrey-camera-description {};

 pointgrey-camera-driver = self.callPackage ./pointgrey-camera-driver {};

 polar-scan-matcher = self.callPackage ./polar-scan-matcher {};

 polled-camera = self.callPackage ./polled-camera {};

 pose-base-controller = self.callPackage ./pose-base-controller {};

 pose-follower = self.callPackage ./pose-follower {};

 posedetection-msgs = self.callPackage ./posedetection-msgs {};

 position-controllers = self.callPackage ./position-controllers {};

 power-monitor = self.callPackage ./power-monitor {};

 pr2 = self.callPackage ./pr2 {};

 pr2-2dnav = self.callPackage ./pr2-2dnav {};

 pr2-2dnav-local = self.callPackage ./pr2-2dnav-local {};

 pr2-2dnav-slam = self.callPackage ./pr2-2dnav-slam {};

 pr2-app-manager = self.callPackage ./pr2-app-manager {};

 pr2-apps = self.callPackage ./pr2-apps {};

 pr2-arm-kinematics = self.callPackage ./pr2-arm-kinematics {};

 pr2-arm-move-ik = self.callPackage ./pr2-arm-move-ik {};

 pr2-base = self.callPackage ./pr2-base {};

 pr2-bringup = self.callPackage ./pr2-bringup {};

 pr2-bringup-tests = self.callPackage ./pr2-bringup-tests {};

 pr2-calibration = self.callPackage ./pr2-calibration {};

 pr2-calibration-controllers = self.callPackage ./pr2-calibration-controllers {};

 pr2-calibration-launch = self.callPackage ./pr2-calibration-launch {};

 pr2-camera-synchronizer = self.callPackage ./pr2-camera-synchronizer {};

 pr2-common = self.callPackage ./pr2-common {};

 pr2-common-action-msgs = self.callPackage ./pr2-common-action-msgs {};

 pr2-common-actions = self.callPackage ./pr2-common-actions {};

 pr2-computer-monitor = self.callPackage ./pr2-computer-monitor {};

 pr2-controller-configuration = self.callPackage ./pr2-controller-configuration {};

 pr2-controller-configuration-gazebo = self.callPackage ./pr2-controller-configuration-gazebo {};

 pr2-controller-interface = self.callPackage ./pr2-controller-interface {};

 pr2-controller-manager = self.callPackage ./pr2-controller-manager {};

 pr2-controllers = self.callPackage ./pr2-controllers {};

 pr2-controllers-msgs = self.callPackage ./pr2-controllers-msgs {};

 pr2-counterbalance-check = self.callPackage ./pr2-counterbalance-check {};

 pr2-dashboard-aggregator = self.callPackage ./pr2-dashboard-aggregator {};

 pr2-dense-laser-snapshotter = self.callPackage ./pr2-dense-laser-snapshotter {};

 pr2-description = self.callPackage ./pr2-description {};

 pr2-desktop = self.callPackage ./pr2-desktop {};

 pr2-ethercat = self.callPackage ./pr2-ethercat {};

 pr2-ethercat-drivers = self.callPackage ./pr2-ethercat-drivers {};

 pr2-gazebo = self.callPackage ./pr2-gazebo {};

 pr2-gazebo-plugins = self.callPackage ./pr2-gazebo-plugins {};

 pr2-gripper-action = self.callPackage ./pr2-gripper-action {};

 pr2-gripper-sensor = self.callPackage ./pr2-gripper-sensor {};

 pr2-gripper-sensor-action = self.callPackage ./pr2-gripper-sensor-action {};

 pr2-gripper-sensor-controller = self.callPackage ./pr2-gripper-sensor-controller {};

 pr2-gripper-sensor-msgs = self.callPackage ./pr2-gripper-sensor-msgs {};

 pr2-hardware-interface = self.callPackage ./pr2-hardware-interface {};

 pr2-head-action = self.callPackage ./pr2-head-action {};

 pr2-kinematics = self.callPackage ./pr2-kinematics {};

 pr2-machine = self.callPackage ./pr2-machine {};

 pr2-mannequin-mode = self.callPackage ./pr2-mannequin-mode {};

 pr2-mechanism = self.callPackage ./pr2-mechanism {};

 pr2-mechanism-controllers = self.callPackage ./pr2-mechanism-controllers {};

 pr2-mechanism-diagnostics = self.callPackage ./pr2-mechanism-diagnostics {};

 pr2-mechanism-model = self.callPackage ./pr2-mechanism-model {};

 pr2-mechanism-msgs = self.callPackage ./pr2-mechanism-msgs {};

 pr2-motor-diagnostic-tool = self.callPackage ./pr2-motor-diagnostic-tool {};

 pr2-move-base = self.callPackage ./pr2-move-base {};

 pr2-moveit-config = self.callPackage ./pr2-moveit-config {};

 pr2-moveit-plugins = self.callPackage ./pr2-moveit-plugins {};

 pr2-msgs = self.callPackage ./pr2-msgs {};

 pr2-navigation = self.callPackage ./pr2-navigation {};

 pr2-navigation-apps = self.callPackage ./pr2-navigation-apps {};

 pr2-navigation-config = self.callPackage ./pr2-navigation-config {};

 pr2-navigation-global = self.callPackage ./pr2-navigation-global {};

 pr2-navigation-local = self.callPackage ./pr2-navigation-local {};

 pr2-navigation-perception = self.callPackage ./pr2-navigation-perception {};

 pr2-navigation-self-filter = self.callPackage ./pr2-navigation-self-filter {};

 pr2-navigation-slam = self.callPackage ./pr2-navigation-slam {};

 pr2-navigation-teleop = self.callPackage ./pr2-navigation-teleop {};

 pr2-position-scripts = self.callPackage ./pr2-position-scripts {};

 pr2-power-board = self.callPackage ./pr2-power-board {};

 pr2-power-drivers = self.callPackage ./pr2-power-drivers {};

 pr2-robot = self.callPackage ./pr2-robot {};

 pr2-run-stop-auto-restart = self.callPackage ./pr2-run-stop-auto-restart {};

 pr2-se-calibration-launch = self.callPackage ./pr2-se-calibration-launch {};

 pr2-self-test = self.callPackage ./pr2-self-test {};

 pr2-self-test-msgs = self.callPackage ./pr2-self-test-msgs {};

 pr2-simulator = self.callPackage ./pr2-simulator {};

 pr2-teleop = self.callPackage ./pr2-teleop {};

 pr2-teleop-general = self.callPackage ./pr2-teleop-general {};

 pr2-tilt-laser-interface = self.callPackage ./pr2-tilt-laser-interface {};

 pr2-tuck-arms-action = self.callPackage ./pr2-tuck-arms-action {};

 pr2-tuckarm = self.callPackage ./pr2-tuckarm {};

 pr2eus = self.callPackage ./pr2eus {};

 pr2eus-moveit = self.callPackage ./pr2eus-moveit {};

 pr2eus-tutorials = self.callPackage ./pr2eus-tutorials {};

 prbt-gazebo = self.callPackage ./prbt-gazebo {};

 prbt-grippers = self.callPackage ./prbt-grippers {};

 prbt-hardware-support = self.callPackage ./prbt-hardware-support {};

 prbt-ikfast-manipulator-plugin = self.callPackage ./prbt-ikfast-manipulator-plugin {};

 prbt-moveit-config = self.callPackage ./prbt-moveit-config {};

 prbt-pg70-support = self.callPackage ./prbt-pg70-support {};

 prbt-support = self.callPackage ./prbt-support {};

 prosilica-camera = self.callPackage ./prosilica-camera {};

 prosilica-gige-sdk = self.callPackage ./prosilica-gige-sdk {};

 ps3joy = self.callPackage ./ps3joy {};

 ps4eye = self.callPackage ./ps4eye {};

 puma-motor-driver = self.callPackage ./puma-motor-driver {};

 puma-motor-msgs = self.callPackage ./puma-motor-msgs {};

 px4-msgs = self.callPackage ./px4-msgs {};

 py-trees = self.callPackage ./py-trees {};

 py-trees-msgs = self.callPackage ./py-trees-msgs {};

 py-trees-ros = self.callPackage ./py-trees-ros {};

 pybind11-catkin = self.callPackage ./pybind11-catkin {};

 pyclearsilver = self.callPackage ./pyclearsilver {};

 pyquaternion = self.callPackage ./pyquaternion {};

 pyros-common = self.callPackage ./pyros-common {};

 pyros-config = self.callPackage ./pyros-config {};

 pyros-test = self.callPackage ./pyros-test {};

 pyros-utils = self.callPackage ./pyros-utils {};

 python-ftputil = self.callPackage ./python-ftputil {};

 python-orocos-kdl = self.callPackage ./python-orocos-kdl {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 pyzmp = self.callPackage ./pyzmp {};

 qb-chain = self.callPackage ./qb-chain {};

 qb-chain-control = self.callPackage ./qb-chain-control {};

 qb-chain-controllers = self.callPackage ./qb-chain-controllers {};

 qb-chain-description = self.callPackage ./qb-chain-description {};

 qb-device = self.callPackage ./qb-device {};

 qb-device-bringup = self.callPackage ./qb-device-bringup {};

 qb-device-control = self.callPackage ./qb-device-control {};

 qb-device-description = self.callPackage ./qb-device-description {};

 qb-device-driver = self.callPackage ./qb-device-driver {};

 qb-device-hardware-interface = self.callPackage ./qb-device-hardware-interface {};

 qb-device-msgs = self.callPackage ./qb-device-msgs {};

 qb-device-srvs = self.callPackage ./qb-device-srvs {};

 qb-device-utils = self.callPackage ./qb-device-utils {};

 qb-hand = self.callPackage ./qb-hand {};

 qb-hand-control = self.callPackage ./qb-hand-control {};

 qb-hand-description = self.callPackage ./qb-hand-description {};

 qb-hand-hardware-interface = self.callPackage ./qb-hand-hardware-interface {};

 qb-move = self.callPackage ./qb-move {};

 qb-move-control = self.callPackage ./qb-move-control {};

 qb-move-description = self.callPackage ./qb-move-description {};

 qb-move-hardware-interface = self.callPackage ./qb-move-hardware-interface {};

 qt-build = self.callPackage ./qt-build {};

 qt-create = self.callPackage ./qt-create {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 qt-qmake = self.callPackage ./qt-qmake {};

 qt-ros = self.callPackage ./qt-ros {};

 qt-tutorials = self.callPackage ./qt-tutorials {};

 quaternion-operation = self.callPackage ./quaternion-operation {};

 qwt-dependency = self.callPackage ./qwt-dependency {};

 radar-msgs = self.callPackage ./radar-msgs {};

 radar-omnipresense = self.callPackage ./radar-omnipresense {};

 radar-pa = self.callPackage ./radar-pa {};

 radar-pa-msgs = self.callPackage ./radar-pa-msgs {};

 rail-manipulation-msgs = self.callPackage ./rail-manipulation-msgs {};

 rail-segmentation = self.callPackage ./rail-segmentation {};

 random-numbers = self.callPackage ./random-numbers {};

 range-sensor-layer = self.callPackage ./range-sensor-layer {};

 raspi-temperature = self.callPackage ./raspi-temperature {};

 raspigibbon-bringup = self.callPackage ./raspigibbon-bringup {};

 raspigibbon-control = self.callPackage ./raspigibbon-control {};

 raspigibbon-description = self.callPackage ./raspigibbon-description {};

 raspigibbon-gazebo = self.callPackage ./raspigibbon-gazebo {};

 raspigibbon-msgs = self.callPackage ./raspigibbon-msgs {};

 raspigibbon-ros = self.callPackage ./raspigibbon-ros {};

 raspigibbon-sim = self.callPackage ./raspigibbon-sim {};

 raw-description = self.callPackage ./raw-description {};

 razor-imu-9dof = self.callPackage ./razor-imu-9dof {};

 rb1-base-2dnav = self.callPackage ./rb1-base-2dnav {};

 rb1-base-common = self.callPackage ./rb1-base-common {};

 rb1-base-control = self.callPackage ./rb1-base-control {};

 rb1-base-description = self.callPackage ./rb1-base-description {};

 rb1-base-gazebo = self.callPackage ./rb1-base-gazebo {};

 rb1-base-pad = self.callPackage ./rb1-base-pad {};

 rb1-base-purepursuit = self.callPackage ./rb1-base-purepursuit {};

 rb1-base-sim = self.callPackage ./rb1-base-sim {};

 rbcar-common = self.callPackage ./rbcar-common {};

 rbcar-control = self.callPackage ./rbcar-control {};

 rbcar-description = self.callPackage ./rbcar-description {};

 rbcar-gazebo = self.callPackage ./rbcar-gazebo {};

 rbcar-joystick = self.callPackage ./rbcar-joystick {};

 rbcar-pad = self.callPackage ./rbcar-pad {};

 rbcar-robot-control = self.callPackage ./rbcar-robot-control {};

 rbcar-sim = self.callPackage ./rbcar-sim {};

 rbcar-sim-bringup = self.callPackage ./rbcar-sim-bringup {};

 rc-cloud-accumulator = self.callPackage ./rc-cloud-accumulator {};

 rc-common-msgs = self.callPackage ./rc-common-msgs {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rc-genicam-driver = self.callPackage ./rc-genicam-driver {};

 rc-hand-eye-calibration-client = self.callPackage ./rc-hand-eye-calibration-client {};

 rc-pick-client = self.callPackage ./rc-pick-client {};

 rc-roi-manager-gui = self.callPackage ./rc-roi-manager-gui {};

 rc-silhouettematch-client = self.callPackage ./rc-silhouettematch-client {};

 rc-tagdetect-client = self.callPackage ./rc-tagdetect-client {};

 rc-visard = self.callPackage ./rc-visard {};

 rc-visard-description = self.callPackage ./rc-visard-description {};

 rc-visard-driver = self.callPackage ./rc-visard-driver {};

 rcdiscover = self.callPackage ./rcdiscover {};

 rdl = self.callPackage ./rdl {};

 rdl-benchmark = self.callPackage ./rdl-benchmark {};

 rdl-cmake = self.callPackage ./rdl-cmake {};

 rdl-dynamics = self.callPackage ./rdl-dynamics {};

 rdl-msgs = self.callPackage ./rdl-msgs {};

 rdl-ros-tools = self.callPackage ./rdl-ros-tools {};

 rdl-urdfreader = self.callPackage ./rdl-urdfreader {};

 realsense2-camera = self.callPackage ./realsense2-camera {};

 realsense2-description = self.callPackage ./realsense2-description {};

 realsense-camera = self.callPackage ./realsense-camera {};

 realtime-tools = self.callPackage ./realtime-tools {};

 recorder-msgs = self.callPackage ./recorder-msgs {};

 recordit = self.callPackage ./recordit {};

 remote-rosbag-record = self.callPackage ./remote-rosbag-record {};

 resized-image-transport = self.callPackage ./resized-image-transport {};

 resource-retriever = self.callPackage ./resource-retriever {};

 rexrov2-control = self.callPackage ./rexrov2-control {};

 rexrov2-description = self.callPackage ./rexrov2-description {};

 rexrov2-gazebo = self.callPackage ./rexrov2-gazebo {};

 rfsm = self.callPackage ./rfsm {};

 rgbd-launch = self.callPackage ./rgbd-launch {};

 rh-p12-rn = self.callPackage ./rh-p12-rn {};

 rh-p12-rn-base-module = self.callPackage ./rh-p12-rn-base-module {};

 rh-p12-rn-base-module-msgs = self.callPackage ./rh-p12-rn-base-module-msgs {};

 rh-p12-rn-description = self.callPackage ./rh-p12-rn-description {};

 rh-p12-rn-gazebo = self.callPackage ./rh-p12-rn-gazebo {};

 rh-p12-rn-gui = self.callPackage ./rh-p12-rn-gui {};

 rh-p12-rn-manager = self.callPackage ./rh-p12-rn-manager {};

 ridgeback-control = self.callPackage ./ridgeback-control {};

 ridgeback-description = self.callPackage ./ridgeback-description {};

 ridgeback-desktop = self.callPackage ./ridgeback-desktop {};

 ridgeback-gazebo = self.callPackage ./ridgeback-gazebo {};

 ridgeback-gazebo-plugins = self.callPackage ./ridgeback-gazebo-plugins {};

 ridgeback-msgs = self.callPackage ./ridgeback-msgs {};

 ridgeback-navigation = self.callPackage ./ridgeback-navigation {};

 ridgeback-simulator = self.callPackage ./ridgeback-simulator {};

 ridgeback-viz = self.callPackage ./ridgeback-viz {};

 robomaker-simulation-msgs = self.callPackage ./robomaker-simulation-msgs {};

 robot = self.callPackage ./robot {};

 robot-activity = self.callPackage ./robot-activity {};

 robot-activity-msgs = self.callPackage ./robot-activity-msgs {};

 robot-activity-tutorials = self.callPackage ./robot-activity-tutorials {};

 robot-calibration = self.callPackage ./robot-calibration {};

 robot-calibration-msgs = self.callPackage ./robot-calibration-msgs {};

 robot-controllers = self.callPackage ./robot-controllers {};

 robot-controllers-interface = self.callPackage ./robot-controllers-interface {};

 robot-controllers-msgs = self.callPackage ./robot-controllers-msgs {};

 robot-indicator = self.callPackage ./robot-indicator {};

 robot-localization = self.callPackage ./robot-localization {};

 robot-mechanism-controllers = self.callPackage ./robot-mechanism-controllers {};

 robot-model = self.callPackage ./robot-model {};

 robot-nav-rviz-plugins = self.callPackage ./robot-nav-rviz-plugins {};

 robot-nav-tools = self.callPackage ./robot-nav-tools {};

 robot-nav-viz-demos = self.callPackage ./robot-nav-viz-demos {};

 robot-navigation = self.callPackage ./robot-navigation {};

 robot-pose-ekf = self.callPackage ./robot-pose-ekf {};

 robot-pose-publisher = self.callPackage ./robot-pose-publisher {};

 robot-recorder = self.callPackage ./robot-recorder {};

 robot-self-filter = self.callPackage ./robot-self-filter {};

 robot-setup-tf-tutorial = self.callPackage ./robot-setup-tf-tutorial {};

 robot-state-publisher = self.callPackage ./robot-state-publisher {};

 robot-statemachine = self.callPackage ./robot-statemachine {};

 robot-systemd = self.callPackage ./robot-systemd {};

 robot-upstart = self.callPackage ./robot-upstart {};

 roboticsgroup-upatras-gazebo-plugins = self.callPackage ./roboticsgroup-upatras-gazebo-plugins {};

 robotis-controller = self.callPackage ./robotis-controller {};

 robotis-controller-msgs = self.callPackage ./robotis-controller-msgs {};

 robotis-device = self.callPackage ./robotis-device {};

 robotis-framework = self.callPackage ./robotis-framework {};

 robotis-framework-common = self.callPackage ./robotis-framework-common {};

 robotis-manipulator = self.callPackage ./robotis-manipulator {};

 robotis-math = self.callPackage ./robotis-math {};

 robotis-op3 = self.callPackage ./robotis-op3 {};

 robotis-op3-common = self.callPackage ./robotis-op3-common {};

 robotis-op3-demo = self.callPackage ./robotis-op3-demo {};

 robotis-op3-msgs = self.callPackage ./robotis-op3-msgs {};

 robotis-op3-tools = self.callPackage ./robotis-op3-tools {};

 robotis-utility = self.callPackage ./robotis-utility {};

 robotnik-msgs = self.callPackage ./robotnik-msgs {};

 robotnik-sensors = self.callPackage ./robotnik-sensors {};

 roch = self.callPackage ./roch {};

 roch-base = self.callPackage ./roch-base {};

 roch-bringup = self.callPackage ./roch-bringup {};

 roch-capabilities = self.callPackage ./roch-capabilities {};

 roch-control = self.callPackage ./roch-control {};

 roch-description = self.callPackage ./roch-description {};

 roch-follower = self.callPackage ./roch-follower {};

 roch-ftdi = self.callPackage ./roch-ftdi {};

 roch-gazebo = self.callPackage ./roch-gazebo {};

 roch-msgs = self.callPackage ./roch-msgs {};

 roch-navigation = self.callPackage ./roch-navigation {};

 roch-rapps = self.callPackage ./roch-rapps {};

 roch-robot = self.callPackage ./roch-robot {};

 roch-safety-controller = self.callPackage ./roch-safety-controller {};

 roch-sensorpc = self.callPackage ./roch-sensorpc {};

 roch-simulator = self.callPackage ./roch-simulator {};

 roch-teleop = self.callPackage ./roch-teleop {};

 roch-viz = self.callPackage ./roch-viz {};

 rocon-app-manager = self.callPackage ./rocon-app-manager {};

 rocon-app-manager-msgs = self.callPackage ./rocon-app-manager-msgs {};

 rocon-app-platform = self.callPackage ./rocon-app-platform {};

 rocon-app-utilities = self.callPackage ./rocon-app-utilities {};

 rocon-apps = self.callPackage ./rocon-apps {};

 rocon-bubble-icons = self.callPackage ./rocon-bubble-icons {};

 rocon-console = self.callPackage ./rocon-console {};

 rocon-device-msgs = self.callPackage ./rocon-device-msgs {};

 rocon-ebnf = self.callPackage ./rocon-ebnf {};

 rocon-gateway = self.callPackage ./rocon-gateway {};

 rocon-gateway-tests = self.callPackage ./rocon-gateway-tests {};

 rocon-gateway-utils = self.callPackage ./rocon-gateway-utils {};

 rocon-hub = self.callPackage ./rocon-hub {};

 rocon-hub-client = self.callPackage ./rocon-hub-client {};

 rocon-icons = self.callPackage ./rocon-icons {};

 rocon-interaction-msgs = self.callPackage ./rocon-interaction-msgs {};

 rocon-interactions = self.callPackage ./rocon-interactions {};

 rocon-launch = self.callPackage ./rocon-launch {};

 rocon-master-info = self.callPackage ./rocon-master-info {};

 rocon-msgs = self.callPackage ./rocon-msgs {};

 rocon-multimaster = self.callPackage ./rocon-multimaster {};

 rocon-python-comms = self.callPackage ./rocon-python-comms {};

 rocon-python-redis = self.callPackage ./rocon-python-redis {};

 rocon-python-utils = self.callPackage ./rocon-python-utils {};

 rocon-python-wifi = self.callPackage ./rocon-python-wifi {};

 rocon-semantic-version = self.callPackage ./rocon-semantic-version {};

 rocon-service-pair-msgs = self.callPackage ./rocon-service-pair-msgs {};

 rocon-std-msgs = self.callPackage ./rocon-std-msgs {};

 rocon-test = self.callPackage ./rocon-test {};

 rocon-tools = self.callPackage ./rocon-tools {};

 rocon-tutorial-msgs = self.callPackage ./rocon-tutorial-msgs {};

 rocon-unreliable-experiments = self.callPackage ./rocon-unreliable-experiments {};

 rocon-uri = self.callPackage ./rocon-uri {};

 rodi-robot = self.callPackage ./rodi-robot {};

 rokubimini = self.callPackage ./rokubimini {};

 rokubimini-bus-manager = self.callPackage ./rokubimini-bus-manager {};

 rokubimini-description = self.callPackage ./rokubimini-description {};

 rokubimini-ethercat = self.callPackage ./rokubimini-ethercat {};

 rokubimini-examples = self.callPackage ./rokubimini-examples {};

 rokubimini-factory = self.callPackage ./rokubimini-factory {};

 rokubimini-manager = self.callPackage ./rokubimini-manager {};

 rokubimini-msgs = self.callPackage ./rokubimini-msgs {};

 rokubimini-serial = self.callPackage ./rokubimini-serial {};

 romeo-bringup = self.callPackage ./romeo-bringup {};

 romeo-control = self.callPackage ./romeo-control {};

 romeo-description = self.callPackage ./romeo-description {};

 romeo-gazebo-plugin = self.callPackage ./romeo-gazebo-plugin {};

 romeo-moveit-config = self.callPackage ./romeo-moveit-config {};

 romeo-robot = self.callPackage ./romeo-robot {};

 romeo-sensors-py = self.callPackage ./romeo-sensors-py {};

 roomba-stage = self.callPackage ./roomba-stage {};

 roomblock = self.callPackage ./roomblock {};

 roomblock-bringup = self.callPackage ./roomblock-bringup {};

 roomblock-description = self.callPackage ./roomblock-description {};

 roomblock-mapping = self.callPackage ./roomblock-mapping {};

 roomblock-navigation = self.callPackage ./roomblock-navigation {};

 ros = self.callPackage ./ros {};

 ros-base = self.callPackage ./ros-base {};

 ros-canopen = self.callPackage ./ros-canopen {};

 ros-comm = self.callPackage ./ros-comm {};

 ros-control = self.callPackage ./ros-control {};

 ros-control-boilerplate = self.callPackage ./ros-control-boilerplate {};

 ros-controllers = self.callPackage ./ros-controllers {};

 ros-core = self.callPackage ./ros-core {};

 ros-emacs-utils = self.callPackage ./ros-emacs-utils {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-ethercat-eml = self.callPackage ./ros-ethercat-eml {};

 ros-explorer = self.callPackage ./ros-explorer {};

 ros-introspection = self.callPackage ./ros-introspection {};

 ros-madplay-player = self.callPackage ./ros-madplay-player {};

 ros-monitoring-msgs = self.callPackage ./ros-monitoring-msgs {};

 ros-mpg321-player = self.callPackage ./ros-mpg321-player {};

 ros-mppt = self.callPackage ./ros-mppt {};

 ros-numpy = self.callPackage ./ros-numpy {};

 ros-pytest = self.callPackage ./ros-pytest {};

 ros-realtime = self.callPackage ./ros-realtime {};

 ros-reflexxes = self.callPackage ./ros-reflexxes {};

 ros-tutorials = self.callPackage ./ros-tutorials {};

 ros-type-introspection = self.callPackage ./ros-type-introspection {};

 ros-wild = self.callPackage ./ros-wild {};

 rosapi = self.callPackage ./rosapi {};

 rosatomic = self.callPackage ./rosatomic {};

 rosauth = self.callPackage ./rosauth {};

 rosbag = self.callPackage ./rosbag {};

 rosbag-cloud-recorders = self.callPackage ./rosbag-cloud-recorders {};

 rosbag-editor = self.callPackage ./rosbag-editor {};

 rosbag-migration-rule = self.callPackage ./rosbag-migration-rule {};

 rosbag-pandas = self.callPackage ./rosbag-pandas {};

 rosbag-snapshot = self.callPackage ./rosbag-snapshot {};

 rosbag-snapshot-msgs = self.callPackage ./rosbag-snapshot-msgs {};

 rosbag-storage = self.callPackage ./rosbag-storage {};

 rosbaglive = self.callPackage ./rosbaglive {};

 rosbash = self.callPackage ./rosbash {};

 rosbash-params = self.callPackage ./rosbash-params {};

 rosboost-cfg = self.callPackage ./rosboost-cfg {};

 rosbridge-library = self.callPackage ./rosbridge-library {};

 rosbridge-msgs = self.callPackage ./rosbridge-msgs {};

 rosbridge-server = self.callPackage ./rosbridge-server {};

 rosbridge-suite = self.callPackage ./rosbridge-suite {};

 rosbuild = self.callPackage ./rosbuild {};

 rosclean = self.callPackage ./rosclean {};

 roscompile = self.callPackage ./roscompile {};

 rosconsole = self.callPackage ./rosconsole {};

 rosconsole-bridge = self.callPackage ./rosconsole-bridge {};

 roscpp = self.callPackage ./roscpp {};

 roscpp-core = self.callPackage ./roscpp-core {};

 roscpp-serialization = self.callPackage ./roscpp-serialization {};

 roscpp-traits = self.callPackage ./roscpp-traits {};

 roscpp-tutorials = self.callPackage ./roscpp-tutorials {};

 roscreate = self.callPackage ./roscreate {};

 rosdiagnostic = self.callPackage ./rosdiagnostic {};

 rosemacs = self.callPackage ./rosemacs {};

 roseus = self.callPackage ./roseus {};

 roseus-mongo = self.callPackage ./roseus-mongo {};

 roseus-smach = self.callPackage ./roseus-smach {};

 roseus-tutorials = self.callPackage ./roseus-tutorials {};

 rosflight = self.callPackage ./rosflight {};

 rosflight-firmware = self.callPackage ./rosflight-firmware {};

 rosflight-msgs = self.callPackage ./rosflight-msgs {};

 rosflight-pkgs = self.callPackage ./rosflight-pkgs {};

 rosflight-sim = self.callPackage ./rosflight-sim {};

 rosflight-utils = self.callPackage ./rosflight-utils {};

 rosfmt = self.callPackage ./rosfmt {};

 rosgraph = self.callPackage ./rosgraph {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 rosjava = self.callPackage ./rosjava {};

 rosjava-bootstrap = self.callPackage ./rosjava-bootstrap {};

 rosjava-build-tools = self.callPackage ./rosjava-build-tools {};

 rosjava-core = self.callPackage ./rosjava-core {};

 rosjava-extras = self.callPackage ./rosjava-extras {};

 rosjava-messages = self.callPackage ./rosjava-messages {};

 rosjava-test-msgs = self.callPackage ./rosjava-test-msgs {};

 rosjson = self.callPackage ./rosjson {};

 roslang = self.callPackage ./roslang {};

 roslaunch = self.callPackage ./roslaunch {};

 roslib = self.callPackage ./roslib {};

 roslint = self.callPackage ./roslint {};

 roslisp = self.callPackage ./roslisp {};

 roslisp-common = self.callPackage ./roslisp-common {};

 roslisp-repl = self.callPackage ./roslisp-repl {};

 roslisp-utilities = self.callPackage ./roslisp-utilities {};

 roslz4 = self.callPackage ./roslz4 {};

 rosmake = self.callPackage ./rosmake {};

 rosmaster = self.callPackage ./rosmaster {};

 rosmon = self.callPackage ./rosmon {};

 rosmon-core = self.callPackage ./rosmon-core {};

 rosmon-msgs = self.callPackage ./rosmon-msgs {};

 rosmsg = self.callPackage ./rosmsg {};

 rosnode = self.callPackage ./rosnode {};

 rosnode-rtc = self.callPackage ./rosnode-rtc {};

 rosout = self.callPackage ./rosout {};

 rospack = self.callPackage ./rospack {};

 rosparam = self.callPackage ./rosparam {};

 rosparam-handler = self.callPackage ./rosparam-handler {};

 rosparam-shortcuts = self.callPackage ./rosparam-shortcuts {};

 rospatlite = self.callPackage ./rospatlite {};

 rosping = self.callPackage ./rosping {};

 rospy = self.callPackage ./rospy {};

 rospy-message-converter = self.callPackage ./rospy-message-converter {};

 rospy-tutorials = self.callPackage ./rospy-tutorials {};

 rospy-wrapper = self.callPackage ./rospy-wrapper {};

 rosrt = self.callPackage ./rosrt {};

 rosserial = self.callPackage ./rosserial {};

 rosserial-arduino = self.callPackage ./rosserial-arduino {};

 rosserial-client = self.callPackage ./rosserial-client {};

 rosserial-embeddedlinux = self.callPackage ./rosserial-embeddedlinux {};

 rosserial-mbed = self.callPackage ./rosserial-mbed {};

 rosserial-msgs = self.callPackage ./rosserial-msgs {};

 rosserial-python = self.callPackage ./rosserial-python {};

 rosserial-server = self.callPackage ./rosserial-server {};

 rosserial-tivac = self.callPackage ./rosserial-tivac {};

 rosserial-windows = self.callPackage ./rosserial-windows {};

 rosserial-xbee = self.callPackage ./rosserial-xbee {};

 rosservice = self.callPackage ./rosservice {};

 rostate-machine = self.callPackage ./rostate-machine {};

 rostest = self.callPackage ./rostest {};

 rostime = self.callPackage ./rostime {};

 rostopic = self.callPackage ./rostopic {};

 rostune = self.callPackage ./rostune {};

 rosunit = self.callPackage ./rosunit {};

 rosweb = self.callPackage ./rosweb {};

 roswtf = self.callPackage ./roswtf {};

 roswww = self.callPackage ./roswww {};

 rotate-recovery = self.callPackage ./rotate-recovery {};

 route-network = self.callPackage ./route-network {};

 rplidar-ros = self.callPackage ./rplidar-ros {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-bag = self.callPackage ./rqt-bag {};

 rqt-bag-plugins = self.callPackage ./rqt-bag-plugins {};

 rqt-bhand = self.callPackage ./rqt-bhand {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-controller-manager = self.callPackage ./rqt-controller-manager {};

 rqt-dep = self.callPackage ./rqt-dep {};

 rqt-drone-teleop = self.callPackage ./rqt-drone-teleop {};

 rqt-ez-publisher = self.callPackage ./rqt-ez-publisher {};

 rqt-gauges = self.callPackage ./rqt-gauges {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-ground-robot-teleop = self.callPackage ./rqt-ground-robot-teleop {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-joint-trajectory-controller = self.callPackage ./rqt-joint-trajectory-controller {};

 rqt-joint-trajectory-plot = self.callPackage ./rqt-joint-trajectory-plot {};

 rqt-launch = self.callPackage ./rqt-launch {};

 rqt-launchtree = self.callPackage ./rqt-launchtree {};

 rqt-logger-level = self.callPackage ./rqt-logger-level {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-multiplot = self.callPackage ./rqt-multiplot {};

 rqt-nav-view = self.callPackage ./rqt-nav-view {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-pose-view = self.callPackage ./rqt-pose-view {};

 rqt-pr2-dashboard = self.callPackage ./rqt-pr2-dashboard {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-py-trees = self.callPackage ./rqt-py-trees {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-monitor = self.callPackage ./rqt-robot-monitor {};

 rqt-robot-plugins = self.callPackage ./rqt-robot-plugins {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-rosmon = self.callPackage ./rqt-rosmon {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-rviz = self.callPackage ./rqt-rviz {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-tf-tree = self.callPackage ./rqt-tf-tree {};

 rqt-top = self.callPackage ./rqt-top {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rqt-web = self.callPackage ./rqt-web {};

 rqt-wrapper = self.callPackage ./rqt-wrapper {};

 rr-control-input-manager = self.callPackage ./rr-control-input-manager {};

 rr-openrover-basic = self.callPackage ./rr-openrover-basic {};

 rr-openrover-description = self.callPackage ./rr-openrover-description {};

 rr-openrover-driver = self.callPackage ./rr-openrover-driver {};

 rr-openrover-driver-msgs = self.callPackage ./rr-openrover-driver-msgs {};

 rr-openrover-simulation = self.callPackage ./rr-openrover-simulation {};

 rr-openrover-stack = self.callPackage ./rr-openrover-stack {};

 rr-rover-zero-driver = self.callPackage ./rr-rover-zero-driver {};

 rr-swiftnav-piksi = self.callPackage ./rr-swiftnav-piksi {};

 rslidar = self.callPackage ./rslidar {};

 rslidar-driver = self.callPackage ./rslidar-driver {};

 rslidar-msgs = self.callPackage ./rslidar-msgs {};

 rslidar-pointcloud = self.callPackage ./rslidar-pointcloud {};

 rsm-additions = self.callPackage ./rsm-additions {};

 rsm-core = self.callPackage ./rsm-core {};

 rsm-msgs = self.callPackage ./rsm-msgs {};

 rsm-rqt-plugins = self.callPackage ./rsm-rqt-plugins {};

 rsm-rviz-plugins = self.callPackage ./rsm-rviz-plugins {};

 rt-usb-9axisimu-driver = self.callPackage ./rt-usb-9axisimu-driver {};

 rtabmap-ros = self.callPackage ./rtabmap-ros {};

 rtmbuild = self.callPackage ./rtmbuild {};

 rtmros-common = self.callPackage ./rtmros-common {};

 rtmros-hironx = self.callPackage ./rtmros-hironx {};

 rtmros-nextage = self.callPackage ./rtmros-nextage {};

 rtt-actionlib = self.callPackage ./rtt-actionlib {};

 rtt-actionlib-msgs = self.callPackage ./rtt-actionlib-msgs {};

 rtt-common-msgs = self.callPackage ./rtt-common-msgs {};

 rtt-control-msgs = self.callPackage ./rtt-control-msgs {};

 rtt-controller-manager-msgs = self.callPackage ./rtt-controller-manager-msgs {};

 rtt-diagnostic-msgs = self.callPackage ./rtt-diagnostic-msgs {};

 rtt-dynamic-reconfigure = self.callPackage ./rtt-dynamic-reconfigure {};

 rtt-geometry = self.callPackage ./rtt-geometry {};

 rtt-geometry-msgs = self.callPackage ./rtt-geometry-msgs {};

 rtt-kdl-conversions = self.callPackage ./rtt-kdl-conversions {};

 rtt-nav-msgs = self.callPackage ./rtt-nav-msgs {};

 rtt-pcl = self.callPackage ./rtt-pcl {};

 rtt-ros = self.callPackage ./rtt-ros {};

 rtt-ros-comm = self.callPackage ./rtt-ros-comm {};

 rtt-ros-integration = self.callPackage ./rtt-ros-integration {};

 rtt-ros-msgs = self.callPackage ./rtt-ros-msgs {};

 rtt-rosclock = self.callPackage ./rtt-rosclock {};

 rtt-roscomm = self.callPackage ./rtt-roscomm {};

 rtt-rosdeployment = self.callPackage ./rtt-rosdeployment {};

 rtt-rosgraph-msgs = self.callPackage ./rtt-rosgraph-msgs {};

 rtt-rosnode = self.callPackage ./rtt-rosnode {};

 rtt-rospack = self.callPackage ./rtt-rospack {};

 rtt-rosparam = self.callPackage ./rtt-rosparam {};

 rtt-sensor-msgs = self.callPackage ./rtt-sensor-msgs {};

 rtt-shape-msgs = self.callPackage ./rtt-shape-msgs {};

 rtt-std-msgs = self.callPackage ./rtt-std-msgs {};

 rtt-std-srvs = self.callPackage ./rtt-std-srvs {};

 rtt-stereo-msgs = self.callPackage ./rtt-stereo-msgs {};

 rtt-tf = self.callPackage ./rtt-tf {};

 rtt-trajectory-msgs = self.callPackage ./rtt-trajectory-msgs {};

 rtt-visualization-msgs = self.callPackage ./rtt-visualization-msgs {};

 rv4fl-moveit-config = self.callPackage ./rv4fl-moveit-config {};

 rv7fl-moveit-config = self.callPackage ./rv7fl-moveit-config {};

 rviz = self.callPackage ./rviz {};

 rviz-imu-plugin = self.callPackage ./rviz-imu-plugin {};

 rviz-plugin-tutorials = self.callPackage ./rviz-plugin-tutorials {};

 rviz-python-tutorial = self.callPackage ./rviz-python-tutorial {};

 rviz-recorder-buttons = self.callPackage ./rviz-recorder-buttons {};

 rviz-visual-tools = self.callPackage ./rviz-visual-tools {};

 rxcpp-vendor = self.callPackage ./rxcpp-vendor {};

 rxros = self.callPackage ./rxros {};

 rxros-tf = self.callPackage ./rxros-tf {};

 s3-common = self.callPackage ./s3-common {};

 s3-file-uploader = self.callPackage ./s3-file-uploader {};

 safe-teleop-base = self.callPackage ./safe-teleop-base {};

 safe-teleop-stage = self.callPackage ./safe-teleop-stage {};

 safety-limiter = self.callPackage ./safety-limiter {};

 safety-limiter-msgs = self.callPackage ./safety-limiter-msgs {};

 sainsmart-relay-usb = self.callPackage ./sainsmart-relay-usb {};

 sand-island = self.callPackage ./sand-island {};

 sbg-driver = self.callPackage ./sbg-driver {};

 sbpl = self.callPackage ./sbpl {};

 sbpl-lattice-planner = self.callPackage ./sbpl-lattice-planner {};

 sbpl-recovery = self.callPackage ./sbpl-recovery {};

 scan-to-cloud-converter = self.callPackage ./scan-to-cloud-converter {};

 scan-tools = self.callPackage ./scan-tools {};

 scenario-test-tools = self.callPackage ./scenario-test-tools {};

 scheduler-msgs = self.callPackage ./scheduler-msgs {};

 schunk-canopen-driver = self.callPackage ./schunk-canopen-driver {};

 schunk-description = self.callPackage ./schunk-description {};

 schunk-libm5api = self.callPackage ./schunk-libm5api {};

 schunk-modular-robotics = self.callPackage ./schunk-modular-robotics {};

 schunk-powercube-chain = self.callPackage ./schunk-powercube-chain {};

 schunk-sdh = self.callPackage ./schunk-sdh {};

 schunk-simulated-tactile-sensors = self.callPackage ./schunk-simulated-tactile-sensors {};

 schunk-svh-driver = self.callPackage ./schunk-svh-driver {};

 scratch4robots = self.callPackage ./scratch4robots {};

 sdc21x0 = self.callPackage ./sdc21x0 {};

 sdhlibrary-cpp = self.callPackage ./sdhlibrary-cpp {};

 seed-r7-bringup = self.callPackage ./seed-r7-bringup {};

 seed-r7-description = self.callPackage ./seed-r7-description {};

 seed-r7-moveit-config = self.callPackage ./seed-r7-moveit-config {};

 seed-r7-navigation = self.callPackage ./seed-r7-navigation {};

 seed-r7-robot-interface = self.callPackage ./seed-r7-robot-interface {};

 seed-r7-ros-controller = self.callPackage ./seed-r7-ros-controller {};

 seed-r7-ros-pkg = self.callPackage ./seed-r7-ros-pkg {};

 seed-r7-samples = self.callPackage ./seed-r7-samples {};

 seed-r7-typef-moveit-config = self.callPackage ./seed-r7-typef-moveit-config {};

 seed-smartactuator-sdk = self.callPackage ./seed-smartactuator-sdk {};

 self-test = self.callPackage ./self-test {};

 semantic-point-annotator = self.callPackage ./semantic-point-annotator {};

 sensor-module-tutorial = self.callPackage ./sensor-module-tutorial {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 serial = self.callPackage ./serial {};

 serial-utils = self.callPackage ./serial-utils {};

 service-tools = self.callPackage ./service-tools {};

 sesame-ros = self.callPackage ./sesame-ros {};

 settlerlib = self.callPackage ./settlerlib {};

 shape-msgs = self.callPackage ./shape-msgs {};

 sick-safetyscanners = self.callPackage ./sick-safetyscanners {};

 sick-scan = self.callPackage ./sick-scan {};

 sick-tim = self.callPackage ./sick-tim {};

 sick-visionary-t = self.callPackage ./sick-visionary-t {};

 sick-visionary-t-driver = self.callPackage ./sick-visionary-t-driver {};

 sicktoolbox = self.callPackage ./sicktoolbox {};

 simple-arm = self.callPackage ./simple-arm {};

 simple-drive = self.callPackage ./simple-drive {};

 simple-grasping = self.callPackage ./simple-grasping {};

 simple-message = self.callPackage ./simple-message {};

 simple-navigation-goals-tutorial = self.callPackage ./simple-navigation-goals-tutorial {};

 simulators = self.callPackage ./simulators {};

 single-joint-position-action = self.callPackage ./single-joint-position-action {};

 skybiometry-ros = self.callPackage ./skybiometry-ros {};

 slam-constructor = self.callPackage ./slam-constructor {};

 slam-gmapping = self.callPackage ./slam-gmapping {};

 slam-karto = self.callPackage ./slam-karto {};

 slic = self.callPackage ./slic {};

 slime-ros = self.callPackage ./slime-ros {};

 slime-wrapper = self.callPackage ./slime-wrapper {};

 smach = self.callPackage ./smach {};

 smach-msgs = self.callPackage ./smach-msgs {};

 smach-ros = self.callPackage ./smach-ros {};

 smach-viewer = self.callPackage ./smach-viewer {};

 smacha = self.callPackage ./smacha {};

 smacha-ros = self.callPackage ./smacha-ros {};

 smclib = self.callPackage ./smclib {};

 sns-ik-lib = self.callPackage ./sns-ik-lib {};

 social-navigation-layers = self.callPackage ./social-navigation-layers {};

 socketcan-bridge = self.callPackage ./socketcan-bridge {};

 socketcan-interface = self.callPackage ./socketcan-interface {};

 soem = self.callPackage ./soem {};

 sophus = self.callPackage ./sophus {};

 sophus-ros-conversions = self.callPackage ./sophus-ros-conversions {};

 sparse-bundle-adjustment = self.callPackage ./sparse-bundle-adjustment {};

 spatio-temporal-voxel-layer = self.callPackage ./spatio-temporal-voxel-layer {};

 speech-recognition-msgs = self.callPackage ./speech-recognition-msgs {};

 srdfdom = self.callPackage ./srdfdom {};

 stag-ros = self.callPackage ./stag-ros {};

 stage = self.callPackage ./stage {};

 stage-ros = self.callPackage ./stage-ros {};

 static-tf = self.callPackage ./static-tf {};

 static-transform-mux = self.callPackage ./static-transform-mux {};

 statistics-msgs = self.callPackage ./statistics-msgs {};

 std-capabilities = self.callPackage ./std-capabilities {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 stdr-gui = self.callPackage ./stdr-gui {};

 stdr-launchers = self.callPackage ./stdr-launchers {};

 stdr-msgs = self.callPackage ./stdr-msgs {};

 stdr-parser = self.callPackage ./stdr-parser {};

 stdr-resources = self.callPackage ./stdr-resources {};

 stdr-robot = self.callPackage ./stdr-robot {};

 stdr-samples = self.callPackage ./stdr-samples {};

 stdr-server = self.callPackage ./stdr-server {};

 stdr-simulator = self.callPackage ./stdr-simulator {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 summit-x-common = self.callPackage ./summit-x-common {};

 summit-x-control = self.callPackage ./summit-x-control {};

 summit-x-description = self.callPackage ./summit-x-description {};

 summit-x-gazebo = self.callPackage ./summit-x-gazebo {};

 summit-x-robot-control = self.callPackage ./summit-x-robot-control {};

 summit-x-sim = self.callPackage ./summit-x-sim {};

 summit-x-sim-bringup = self.callPackage ./summit-x-sim-bringup {};

 summit-xl-common = self.callPackage ./summit-xl-common {};

 summit-xl-control = self.callPackage ./summit-xl-control {};

 summit-xl-description = self.callPackage ./summit-xl-description {};

 summit-xl-gazebo = self.callPackage ./summit-xl-gazebo {};

 summit-xl-localization = self.callPackage ./summit-xl-localization {};

 summit-xl-navigation = self.callPackage ./summit-xl-navigation {};

 summit-xl-pad = self.callPackage ./summit-xl-pad {};

 summit-xl-robot-control = self.callPackage ./summit-xl-robot-control {};

 summit-xl-sim = self.callPackage ./summit-xl-sim {};

 summit-xl-sim-bringup = self.callPackage ./summit-xl-sim-bringup {};

 swri-console = self.callPackage ./swri-console {};

 swri-console-util = self.callPackage ./swri-console-util {};

 swri-dbw-interface = self.callPackage ./swri-dbw-interface {};

 swri-geometry-util = self.callPackage ./swri-geometry-util {};

 swri-image-util = self.callPackage ./swri-image-util {};

 swri-math-util = self.callPackage ./swri-math-util {};

 swri-nodelet = self.callPackage ./swri-nodelet {};

 swri-opencv-util = self.callPackage ./swri-opencv-util {};

 swri-prefix-tools = self.callPackage ./swri-prefix-tools {};

 swri-profiler = self.callPackage ./swri-profiler {};

 swri-profiler-msgs = self.callPackage ./swri-profiler-msgs {};

 swri-profiler-tools = self.callPackage ./swri-profiler-tools {};

 swri-roscpp = self.callPackage ./swri-roscpp {};

 swri-rospy = self.callPackage ./swri-rospy {};

 swri-route-util = self.callPackage ./swri-route-util {};

 swri-serial-util = self.callPackage ./swri-serial-util {};

 swri-string-util = self.callPackage ./swri-string-util {};

 swri-system-util = self.callPackage ./swri-system-util {};

 swri-transform-util = self.callPackage ./swri-transform-util {};

 swri-yaml-util = self.callPackage ./swri-yaml-util {};

 sync-params = self.callPackage ./sync-params {};

 tablet-socket-msgs = self.callPackage ./tablet-socket-msgs {};

 talos-description = self.callPackage ./talos-description {};

 talos-description-calibration = self.callPackage ./talos-description-calibration {};

 talos-description-inertial = self.callPackage ./talos-description-inertial {};

 tango-ros-messages = self.callPackage ./tango-ros-messages {};

 task-compiler = self.callPackage ./task-compiler {};

 tblib = self.callPackage ./tblib {};

 tdk-robokit = self.callPackage ./tdk-robokit {};

 teb-local-planner = self.callPackage ./teb-local-planner {};

 teb-local-planner-tutorials = self.callPackage ./teb-local-planner-tutorials {};

 teleop-tools = self.callPackage ./teleop-tools {};

 teleop-tools-msgs = self.callPackage ./teleop-tools-msgs {};

 teleop-twist-joy = self.callPackage ./teleop-twist-joy {};

 teleop-twist-keyboard = self.callPackage ./teleop-twist-keyboard {};

 tello-driver = self.callPackage ./tello-driver {};

 tensorflow-ros = self.callPackage ./tensorflow-ros {};

 tensorflow-ros-rqt = self.callPackage ./tensorflow-ros-rqt {};

 teraranger = self.callPackage ./teraranger {};

 teraranger-array = self.callPackage ./teraranger-array {};

 teraranger-array-converter = self.callPackage ./teraranger-array-converter {};

 teraranger-description = self.callPackage ./teraranger-description {};

 test-diagnostic-aggregator = self.callPackage ./test-diagnostic-aggregator {};

 test-mavros = self.callPackage ./test-mavros {};

 test-osm = self.callPackage ./test-osm {};

 tf = self.callPackage ./tf {};

 tf2 = self.callPackage ./tf2 {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-geometry-msgs = self.callPackage ./tf2-geometry-msgs {};

 tf2-kdl = self.callPackage ./tf2-kdl {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-relay = self.callPackage ./tf2-relay {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-sensor-msgs = self.callPackage ./tf2-sensor-msgs {};

 tf2-tools = self.callPackage ./tf2-tools {};

 tf2-web-republisher = self.callPackage ./tf2-web-republisher {};

 tf-conversions = self.callPackage ./tf-conversions {};

 tf-remapper-cpp = self.callPackage ./tf-remapper-cpp {};

 tf-tools = self.callPackage ./tf-tools {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 thormang3-action-editor = self.callPackage ./thormang3-action-editor {};

 thormang3-action-module = self.callPackage ./thormang3-action-module {};

 thormang3-action-module-msgs = self.callPackage ./thormang3-action-module-msgs {};

 thormang3-action-script-player = self.callPackage ./thormang3-action-script-player {};

 thormang3-balance-control = self.callPackage ./thormang3-balance-control {};

 thormang3-base-module = self.callPackage ./thormang3-base-module {};

 thormang3-common = self.callPackage ./thormang3-common {};

 thormang3-demo = self.callPackage ./thormang3-demo {};

 thormang3-description = self.callPackage ./thormang3-description {};

 thormang3-feet-ft-module = self.callPackage ./thormang3-feet-ft-module {};

 thormang3-feet-ft-module-msgs = self.callPackage ./thormang3-feet-ft-module-msgs {};

 thormang3-foot-step-generator = self.callPackage ./thormang3-foot-step-generator {};

 thormang3-gazebo = self.callPackage ./thormang3-gazebo {};

 thormang3-gripper-module = self.callPackage ./thormang3-gripper-module {};

 thormang3-head-control-module = self.callPackage ./thormang3-head-control-module {};

 thormang3-head-control-module-msgs = self.callPackage ./thormang3-head-control-module-msgs {};

 thormang3-imu-3dm-gx4 = self.callPackage ./thormang3-imu-3dm-gx4 {};

 thormang3-kinematics-dynamics = self.callPackage ./thormang3-kinematics-dynamics {};

 thormang3-manager = self.callPackage ./thormang3-manager {};

 thormang3-manipulation-demo = self.callPackage ./thormang3-manipulation-demo {};

 thormang3-manipulation-module = self.callPackage ./thormang3-manipulation-module {};

 thormang3-manipulation-module-msgs = self.callPackage ./thormang3-manipulation-module-msgs {};

 thormang3-mpc = self.callPackage ./thormang3-mpc {};

 thormang3-mpc-sensors = self.callPackage ./thormang3-mpc-sensors {};

 thormang3-msgs = self.callPackage ./thormang3-msgs {};

 thormang3-navigation = self.callPackage ./thormang3-navigation {};

 thormang3-offset-tuner-client = self.callPackage ./thormang3-offset-tuner-client {};

 thormang3-offset-tuner-msgs = self.callPackage ./thormang3-offset-tuner-msgs {};

 thormang3-offset-tuner-server = self.callPackage ./thormang3-offset-tuner-server {};

 thormang3-opc = self.callPackage ./thormang3-opc {};

 thormang3-ppc = self.callPackage ./thormang3-ppc {};

 thormang3-sensors = self.callPackage ./thormang3-sensors {};

 thormang3-tools = self.callPackage ./thormang3-tools {};

 thormang3-walking-demo = self.callPackage ./thormang3-walking-demo {};

 thormang3-walking-module = self.callPackage ./thormang3-walking-module {};

 thormang3-walking-module-msgs = self.callPackage ./thormang3-walking-module-msgs {};

 tile-map = self.callPackage ./tile-map {};

 timed-roslaunch = self.callPackage ./timed-roslaunch {};

 timestamp-tools = self.callPackage ./timestamp-tools {};

 topic-switch = self.callPackage ./topic-switch {};

 topic-tools = self.callPackage ./topic-tools {};

 toposens = self.callPackage ./toposens {};

 toposens-bringup = self.callPackage ./toposens-bringup {};

 toposens-description = self.callPackage ./toposens-description {};

 toposens-driver = self.callPackage ./toposens-driver {};

 toposens-markers = self.callPackage ./toposens-markers {};

 toposens-msgs = self.callPackage ./toposens-msgs {};

 toposens-pointcloud = self.callPackage ./toposens-pointcloud {};

 toposens-sync = self.callPackage ./toposens-sync {};

 towr = self.callPackage ./towr {};

 towr-ros = self.callPackage ./towr-ros {};

 tra1-bringup = self.callPackage ./tra1-bringup {};

 tra1-description = self.callPackage ./tra1-description {};

 tra1-moveit-config = self.callPackage ./tra1-moveit-config {};

 trac-ik = self.callPackage ./trac-ik {};

 trac-ik-examples = self.callPackage ./trac-ik-examples {};

 trac-ik-kinematics-plugin = self.callPackage ./trac-ik-kinematics-plugin {};

 trac-ik-lib = self.callPackage ./trac-ik-lib {};

 trac-ik-python = self.callPackage ./trac-ik-python {};

 tracetools = self.callPackage ./tracetools {};

 track-odometry = self.callPackage ./track-odometry {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 trajectory-tracker = self.callPackage ./trajectory-tracker {};

 trajectory-tracker-msgs = self.callPackage ./trajectory-tracker-msgs {};

 trajectory-tracker-rviz-plugins = self.callPackage ./trajectory-tracker-rviz-plugins {};

 transmission-interface = self.callPackage ./transmission-interface {};

 tts = self.callPackage ./tts {};

 turtle-actionlib = self.callPackage ./turtle-actionlib {};

 turtle-tf = self.callPackage ./turtle-tf {};

 turtle-tf2 = self.callPackage ./turtle-tf2 {};

 turtlebot = self.callPackage ./turtlebot {};

 turtlebot3 = self.callPackage ./turtlebot3 {};

 turtlebot3-applications = self.callPackage ./turtlebot3-applications {};

 turtlebot3-applications-msgs = self.callPackage ./turtlebot3-applications-msgs {};

 turtlebot3-automatic-parking = self.callPackage ./turtlebot3-automatic-parking {};

 turtlebot3-automatic-parking-vision = self.callPackage ./turtlebot3-automatic-parking-vision {};

 turtlebot3-autorace = self.callPackage ./turtlebot3-autorace {};

 turtlebot3-autorace-camera = self.callPackage ./turtlebot3-autorace-camera {};

 turtlebot3-autorace-control = self.callPackage ./turtlebot3-autorace-control {};

 turtlebot3-autorace-core = self.callPackage ./turtlebot3-autorace-core {};

 turtlebot3-autorace-detect = self.callPackage ./turtlebot3-autorace-detect {};

 turtlebot3-bringup = self.callPackage ./turtlebot3-bringup {};

 turtlebot3-description = self.callPackage ./turtlebot3-description {};

 turtlebot3-example = self.callPackage ./turtlebot3-example {};

 turtlebot3-fake = self.callPackage ./turtlebot3-fake {};

 turtlebot3-follow-filter = self.callPackage ./turtlebot3-follow-filter {};

 turtlebot3-follower = self.callPackage ./turtlebot3-follower {};

 turtlebot3-gazebo = self.callPackage ./turtlebot3-gazebo {};

 turtlebot3-msgs = self.callPackage ./turtlebot3-msgs {};

 turtlebot3-navigation = self.callPackage ./turtlebot3-navigation {};

 turtlebot3-panorama = self.callPackage ./turtlebot3-panorama {};

 turtlebot3-simulations = self.callPackage ./turtlebot3-simulations {};

 turtlebot3-slam = self.callPackage ./turtlebot3-slam {};

 turtlebot3-teleop = self.callPackage ./turtlebot3-teleop {};

 turtlebot-actions = self.callPackage ./turtlebot-actions {};

 turtlebot-apps = self.callPackage ./turtlebot-apps {};

 turtlebot-bringup = self.callPackage ./turtlebot-bringup {};

 turtlebot-calibration = self.callPackage ./turtlebot-calibration {};

 turtlebot-capabilities = self.callPackage ./turtlebot-capabilities {};

 turtlebot-create = self.callPackage ./turtlebot-create {};

 turtlebot-dashboard = self.callPackage ./turtlebot-dashboard {};

 turtlebot-description = self.callPackage ./turtlebot-description {};

 turtlebot-follower = self.callPackage ./turtlebot-follower {};

 turtlebot-gazebo = self.callPackage ./turtlebot-gazebo {};

 turtlebot-interactions = self.callPackage ./turtlebot-interactions {};

 turtlebot-interactive-markers = self.callPackage ./turtlebot-interactive-markers {};

 turtlebot-loadout-kha1 = self.callPackage ./turtlebot-loadout-kha1 {};

 turtlebot-msgs = self.callPackage ./turtlebot-msgs {};

 turtlebot-navigation = self.callPackage ./turtlebot-navigation {};

 turtlebot-rapps = self.callPackage ./turtlebot-rapps {};

 turtlebot-rviz-launchers = self.callPackage ./turtlebot-rviz-launchers {};

 turtlebot-simulator = self.callPackage ./turtlebot-simulator {};

 turtlebot-stage = self.callPackage ./turtlebot-stage {};

 turtlebot-stdr = self.callPackage ./turtlebot-stdr {};

 turtlebot-teleop = self.callPackage ./turtlebot-teleop {};

 turtlesim = self.callPackage ./turtlesim {};

 tuw-airskin-msgs = self.callPackage ./tuw-airskin-msgs {};

 tuw-aruco = self.callPackage ./tuw-aruco {};

 tuw-ellipses = self.callPackage ./tuw-ellipses {};

 tuw-gazebo-msgs = self.callPackage ./tuw-gazebo-msgs {};

 tuw-geometry-msgs = self.callPackage ./tuw-geometry-msgs {};

 tuw-marker-detection = self.callPackage ./tuw-marker-detection {};

 tuw-marker-pose-estimation = self.callPackage ./tuw-marker-pose-estimation {};

 tuw-msgs = self.callPackage ./tuw-msgs {};

 tuw-multi-robot-msgs = self.callPackage ./tuw-multi-robot-msgs {};

 tuw-nav-msgs = self.callPackage ./tuw-nav-msgs {};

 tuw-object-msgs = self.callPackage ./tuw-object-msgs {};

 tuw-vehicle-msgs = self.callPackage ./tuw-vehicle-msgs {};

 twist-mux = self.callPackage ./twist-mux {};

 twist-mux-msgs = self.callPackage ./twist-mux-msgs {};

 twist-recovery = self.callPackage ./twist-recovery {};

 twistimu = self.callPackage ./twistimu {};

 ubiquity-motor = self.callPackage ./ubiquity-motor {};

 udp-com = self.callPackage ./udp-com {};

 ueye = self.callPackage ./ueye {};

 ueye-cam = self.callPackage ./ueye-cam {};

 um6 = self.callPackage ./um6 {};

 um7 = self.callPackage ./um7 {};

 underwater-sensor-msgs = self.callPackage ./underwater-sensor-msgs {};

 underwater-vehicle-dynamics = self.callPackage ./underwater-vehicle-dynamics {};

 unique-id = self.callPackage ./unique-id {};

 unique-identifier = self.callPackage ./unique-identifier {};

 universal-robot = self.callPackage ./universal-robot {};

 universal-robots = self.callPackage ./universal-robots {};

 uos-common-urdf = self.callPackage ./uos-common-urdf {};

 uos-diffdrive-teleop = self.callPackage ./uos-diffdrive-teleop {};

 uos-freespace = self.callPackage ./uos-freespace {};

 uos-gazebo-worlds = self.callPackage ./uos-gazebo-worlds {};

 uos-maps = self.callPackage ./uos-maps {};

 uos-tools = self.callPackage ./uos-tools {};

 ur10-e-moveit-config = self.callPackage ./ur10-e-moveit-config {};

 ur10-moveit-config = self.callPackage ./ur10-moveit-config {};

 ur3-e-moveit-config = self.callPackage ./ur3-e-moveit-config {};

 ur3-moveit-config = self.callPackage ./ur3-moveit-config {};

 ur5-e-moveit-config = self.callPackage ./ur5-e-moveit-config {};

 ur5-moveit-config = self.callPackage ./ur5-moveit-config {};

 ur-bringup = self.callPackage ./ur-bringup {};

 ur-client-library = self.callPackage ./ur-client-library {};

 ur-description = self.callPackage ./ur-description {};

 ur-driver = self.callPackage ./ur-driver {};

 ur-e-description = self.callPackage ./ur-e-description {};

 ur-e-gazebo = self.callPackage ./ur-e-gazebo {};

 ur-gazebo = self.callPackage ./ur-gazebo {};

 ur-kinematics = self.callPackage ./ur-kinematics {};

 ur-msgs = self.callPackage ./ur-msgs {};

 urdf = self.callPackage ./urdf {};

 urdf-geometry-parser = self.callPackage ./urdf-geometry-parser {};

 urdf-parser-plugin = self.callPackage ./urdf-parser-plugin {};

 urdf-sim-tutorial = self.callPackage ./urdf-sim-tutorial {};

 urdf-test = self.callPackage ./urdf-test {};

 urdf-tutorial = self.callPackage ./urdf-tutorial {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-c = self.callPackage ./urg-c {};

 urg-node = self.callPackage ./urg-node {};

 urg-stamped = self.callPackage ./urg-stamped {};

 usb-cam = self.callPackage ./usb-cam {};

 usb-cam-controllers = self.callPackage ./usb-cam-controllers {};

 usb-cam-hardware = self.callPackage ./usb-cam-hardware {};

 usb-cam-hardware-interface = self.callPackage ./usb-cam-hardware-interface {};

 usv-gazebo-plugins = self.callPackage ./usv-gazebo-plugins {};

 uuid-msgs = self.callPackage ./uuid-msgs {};

 uuv-assistants = self.callPackage ./uuv-assistants {};

 uuv-auv-control-allocator = self.callPackage ./uuv-auv-control-allocator {};

 uuv-control-cascaded-pid = self.callPackage ./uuv-control-cascaded-pid {};

 uuv-control-msgs = self.callPackage ./uuv-control-msgs {};

 uuv-control-utils = self.callPackage ./uuv-control-utils {};

 uuv-cpc-sensor = self.callPackage ./uuv-cpc-sensor {};

 uuv-descriptions = self.callPackage ./uuv-descriptions {};

 uuv-gazebo = self.callPackage ./uuv-gazebo {};

 uuv-gazebo-plugins = self.callPackage ./uuv-gazebo-plugins {};

 uuv-gazebo-ros-plugins = self.callPackage ./uuv-gazebo-ros-plugins {};

 uuv-gazebo-ros-plugins-msgs = self.callPackage ./uuv-gazebo-ros-plugins-msgs {};

 uuv-gazebo-worlds = self.callPackage ./uuv-gazebo-worlds {};

 uuv-plume-msgs = self.callPackage ./uuv-plume-msgs {};

 uuv-plume-simulator = self.callPackage ./uuv-plume-simulator {};

 uuv-sensor-ros-plugins = self.callPackage ./uuv-sensor-ros-plugins {};

 uuv-sensor-ros-plugins-msgs = self.callPackage ./uuv-sensor-ros-plugins-msgs {};

 uuv-simulator = self.callPackage ./uuv-simulator {};

 uuv-teleop = self.callPackage ./uuv-teleop {};

 uuv-thruster-manager = self.callPackage ./uuv-thruster-manager {};

 uuv-trajectory-control = self.callPackage ./uuv-trajectory-control {};

 uuv-world-plugins = self.callPackage ./uuv-world-plugins {};

 uuv-world-ros-plugins = self.callPackage ./uuv-world-ros-plugins {};

 uuv-world-ros-plugins-msgs = self.callPackage ./uuv-world-ros-plugins-msgs {};

 uvc-camera = self.callPackage ./uvc-camera {};

 uwb-hardware-driver = self.callPackage ./uwb-hardware-driver {};

 uwsim-bullet = self.callPackage ./uwsim-bullet {};

 uwsim-osgbullet = self.callPackage ./uwsim-osgbullet {};

 uwsim-osgocean = self.callPackage ./uwsim-osgocean {};

 uwsim-osgworks = self.callPackage ./uwsim-osgworks {};

 variant = self.callPackage ./variant {};

 variant-msgs = self.callPackage ./variant-msgs {};

 variant-topic-test = self.callPackage ./variant-topic-test {};

 variant-topic-tools = self.callPackage ./variant-topic-tools {};

 vector-map-msgs = self.callPackage ./vector-map-msgs {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 velodyne = self.callPackage ./velodyne {};

 velodyne-description = self.callPackage ./velodyne-description {};

 velodyne-driver = self.callPackage ./velodyne-driver {};

 velodyne-gazebo-plugins = self.callPackage ./velodyne-gazebo-plugins {};

 velodyne-laserscan = self.callPackage ./velodyne-laserscan {};

 velodyne-msgs = self.callPackage ./velodyne-msgs {};

 velodyne-pointcloud = self.callPackage ./velodyne-pointcloud {};

 velodyne-simulator = self.callPackage ./velodyne-simulator {};

 vesc = self.callPackage ./vesc {};

 vesc-ackermann = self.callPackage ./vesc-ackermann {};

 vesc-driver = self.callPackage ./vesc-driver {};

 vesc-msgs = self.callPackage ./vesc-msgs {};

 video-stream-opencv = self.callPackage ./video-stream-opencv {};

 view-controller-msgs = self.callPackage ./view-controller-msgs {};

 virtual-force-publisher = self.callPackage ./virtual-force-publisher {};

 vision-msgs = self.callPackage ./vision-msgs {};

 vision-opencv = self.callPackage ./vision-opencv {};

 vision-visp = self.callPackage ./vision-visp {};

 visp-auto-tracker = self.callPackage ./visp-auto-tracker {};

 visp-bridge = self.callPackage ./visp-bridge {};

 visp-camera-calibration = self.callPackage ./visp-camera-calibration {};

 visp-hand2eye-calibration = self.callPackage ./visp-hand2eye-calibration {};

 visp-tracker = self.callPackage ./visp-tracker {};

 visualization-marker-tutorials = self.callPackage ./visualization-marker-tutorials {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 visualization-osg = self.callPackage ./visualization-osg {};

 visualization-tutorials = self.callPackage ./visualization-tutorials {};

 viz = self.callPackage ./viz {};

 voice-text = self.callPackage ./voice-text {};

 volta-base = self.callPackage ./volta-base {};

 volta-control = self.callPackage ./volta-control {};

 volta-description = self.callPackage ./volta-description {};

 volta-localization = self.callPackage ./volta-localization {};

 volta-msgs = self.callPackage ./volta-msgs {};

 volta-navigation = self.callPackage ./volta-navigation {};

 volta-rules = self.callPackage ./volta-rules {};

 volta-simulation = self.callPackage ./volta-simulation {};

 volta-teleoperator = self.callPackage ./volta-teleoperator {};

 voxel-grid = self.callPackage ./voxel-grid {};

 vrpn = self.callPackage ./vrpn {};

 vrpn-client-ros = self.callPackage ./vrpn-client-ros {};

 vrx-gazebo = self.callPackage ./vrx-gazebo {};

 vs060 = self.callPackage ./vs060 {};

 vs060-gazebo = self.callPackage ./vs060-gazebo {};

 vs060-moveit-config = self.callPackage ./vs060-moveit-config {};

 wamv-description = self.callPackage ./wamv-description {};

 wamv-gazebo = self.callPackage ./wamv-gazebo {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 warthog-control = self.callPackage ./warthog-control {};

 warthog-description = self.callPackage ./warthog-description {};

 warthog-desktop = self.callPackage ./warthog-desktop {};

 warthog-gazebo = self.callPackage ./warthog-gazebo {};

 warthog-msgs = self.callPackage ./warthog-msgs {};

 warthog-simulator = self.callPackage ./warthog-simulator {};

 warthog-viz = self.callPackage ./warthog-viz {};

 watson-ins = self.callPackage ./watson-ins {};

 wave-gazebo = self.callPackage ./wave-gazebo {};

 wave-gazebo-plugins = self.callPackage ./wave-gazebo-plugins {};

 waypoint-generator = self.callPackage ./waypoint-generator {};

 waypoint-meta = self.callPackage ./waypoint-meta {};

 waypoint-touring = self.callPackage ./waypoint-touring {};

 web-interface = self.callPackage ./web-interface {};

 web-msgs = self.callPackage ./web-msgs {};

 web-video-server = self.callPackage ./web-video-server {};

 webargs = self.callPackage ./webargs {};

 webkit-dependency = self.callPackage ./webkit-dependency {};

 webots-ros = self.callPackage ./webots-ros {};

 webrtc = self.callPackage ./webrtc {};

 webrtc-ros = self.callPackage ./webrtc-ros {};

 webtest = self.callPackage ./webtest {};

 webui = self.callPackage ./webui {};

 wfov-camera-msgs = self.callPackage ./wfov-camera-msgs {};

 wge100-camera = self.callPackage ./wge100-camera {};

 wge100-camera-firmware = self.callPackage ./wge100-camera-firmware {};

 wge100-driver = self.callPackage ./wge100-driver {};

 wifi-ddwrt = self.callPackage ./wifi-ddwrt {};

 willow-maps = self.callPackage ./willow-maps {};

 wireless-msgs = self.callPackage ./wireless-msgs {};

 wireless-watcher = self.callPackage ./wireless-watcher {};

 world-canvas-client-cpp = self.callPackage ./world-canvas-client-cpp {};

 world-canvas-client-examples = self.callPackage ./world-canvas-client-examples {};

 world-canvas-client-py = self.callPackage ./world-canvas-client-py {};

 world-canvas-msgs = self.callPackage ./world-canvas-msgs {};

 world-canvas-server = self.callPackage ./world-canvas-server {};

 world-canvas-utils = self.callPackage ./world-canvas-utils {};

 wts-driver = self.callPackage ./wts-driver {};

 wu-ros-tools = self.callPackage ./wu-ros-tools {};

 xacro = self.callPackage ./xacro {};

 xiaoqiang = self.callPackage ./xiaoqiang {};

 xiaoqiang-bringup = self.callPackage ./xiaoqiang-bringup {};

 xiaoqiang-controller = self.callPackage ./xiaoqiang-controller {};

 xiaoqiang-depth-image-proc = self.callPackage ./xiaoqiang-depth-image-proc {};

 xiaoqiang-description = self.callPackage ./xiaoqiang-description {};

 xiaoqiang-driver = self.callPackage ./xiaoqiang-driver {};

 xiaoqiang-freenect = self.callPackage ./xiaoqiang-freenect {};

 xiaoqiang-freenect-camera = self.callPackage ./xiaoqiang-freenect-camera {};

 xiaoqiang-freenect-launch = self.callPackage ./xiaoqiang-freenect-launch {};

 xiaoqiang-monitor = self.callPackage ./xiaoqiang-monitor {};

 xiaoqiang-msgs = self.callPackage ./xiaoqiang-msgs {};

 xiaoqiang-navigation = self.callPackage ./xiaoqiang-navigation {};

 xiaoqiang-navigation-example = self.callPackage ./xiaoqiang-navigation-example {};

 xiaoqiang-server = self.callPackage ./xiaoqiang-server {};

 xmlrpcpp = self.callPackage ./xmlrpcpp {};

 xpp = self.callPackage ./xpp {};

 xpp-examples = self.callPackage ./xpp-examples {};

 xpp-hyq = self.callPackage ./xpp-hyq {};

 xpp-msgs = self.callPackage ./xpp-msgs {};

 xpp-quadrotor = self.callPackage ./xpp-quadrotor {};

 xpp-states = self.callPackage ./xpp-states {};

 xpp-vis = self.callPackage ./xpp-vis {};

 xsens-driver = self.callPackage ./xsens-driver {};

 xv-11-laser-driver = self.callPackage ./xv-11-laser-driver {};

 yaml-cpp-0-3 = self.callPackage ./yaml-cpp-0-3 {};

 yocs-ar-marker-tracking = self.callPackage ./yocs-ar-marker-tracking {};

 yocs-ar-pair-approach = self.callPackage ./yocs-ar-pair-approach {};

 yocs-ar-pair-tracking = self.callPackage ./yocs-ar-pair-tracking {};

 yocs-cmd-vel-mux = self.callPackage ./yocs-cmd-vel-mux {};

 yocs-controllers = self.callPackage ./yocs-controllers {};

 yocs-diff-drive-pose-controller = self.callPackage ./yocs-diff-drive-pose-controller {};

 yocs-joyop = self.callPackage ./yocs-joyop {};

 yocs-keyop = self.callPackage ./yocs-keyop {};

 yocs-localization-manager = self.callPackage ./yocs-localization-manager {};

 yocs-math-toolkit = self.callPackage ./yocs-math-toolkit {};

 yocs-msgs = self.callPackage ./yocs-msgs {};

 yocs-navi-toolkit = self.callPackage ./yocs-navi-toolkit {};

 yocs-navigator = self.callPackage ./yocs-navigator {};

 yocs-rapps = self.callPackage ./yocs-rapps {};

 yocs-safety-controller = self.callPackage ./yocs-safety-controller {};

 yocs-velocity-smoother = self.callPackage ./yocs-velocity-smoother {};

 yocs-virtual-sensor = self.callPackage ./yocs-virtual-sensor {};

 yocs-waypoint-provider = self.callPackage ./yocs-waypoint-provider {};

 yocs-waypoints-navi = self.callPackage ./yocs-waypoints-navi {};

 yosemite-valley = self.callPackage ./yosemite-valley {};

 youbot-description = self.callPackage ./youbot-description {};

 youbot-driver = self.callPackage ./youbot-driver {};

 ypspur = self.callPackage ./ypspur {};

 ypspur-ros = self.callPackage ./ypspur-ros {};

 yujin-ocs = self.callPackage ./yujin-ocs {};

 zbar-ros = self.callPackage ./zbar-ros {};

 zeroconf-avahi = self.callPackage ./zeroconf-avahi {};

 zeroconf-avahi-demos = self.callPackage ./zeroconf-avahi-demos {};

 zeroconf-avahi-suite = self.callPackage ./zeroconf-avahi-suite {};

 zeroconf-jmdns-suite = self.callPackage ./zeroconf-jmdns-suite {};

 zeroconf-msgs = self.callPackage ./zeroconf-msgs {};

}
